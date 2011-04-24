// author: Madhav P. Desai
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <SocketLib.h>
#include <Vhpi.h>

#define LOG_FILE "vhpi.log"

#define z32__ "00000000000000000000000000000000"

#define APPEND(lst,lnk) if(lst.tail)\
      {\
	lst.tail->next = lnk;\
	lnk->prev = lst.tail;\
	lnk->next = NULL;\
	lst.tail = lnk;\
      }\
    else\
      {\
	lst.head = lnk;\
	lst.tail = lnk;\
	lnk->prev = NULL;\
	lnk->next = NULL;\
      }

#define REMOVE(lst,lnk) if((lst.head == lnk) && (lst.tail == lnk))	\
    {\
      lst.head = NULL;\
      lst.tail = NULL;\
      lnk->next = lnk->prev = NULL;\
    }\
  else if(lst.head == lnk)\
    {\
      lst.head = lnk->next;\
      lnk->next->prev = NULL;\
      lnk->next = lnk->prev = NULL;\
    }\
  else if(lst.tail == lnk)\
    {\
      lst.tail = lnk->prev;\
      lnk->prev->next = NULL;\
      lnk->prev = lnk->next = NULL;\
    }\
  else\
    {\
      lnk->prev->next = lnk->next;\
      lnk->next->prev = lnk->prev;\
      lnk->prev = lnk->next = NULL;\
    }

// cycle count;
int cycle_count = 0;

// free job index
int64_t free_job_index = 0;

// server socket
int server_socket_id = -1;

// joblist.
JobList new_jobs;
JobList active_jobs;
JobList finished_jobs;

///////////////////////////////////////////////////////////////////////////////////////////////
// some utility functions.
///////////////////////////////////////////////////////////////////////////////////////////////

// convert 32 character string pointed to by a to an 
// unsigned.
unsigned Bit_Vector_To_Unsigned(char* a)
{
  unsigned ret_val = 0;
  int index;
  if(a != NULL)
    {
      for(index = 31; index >= 0; index--)
	{
	  if(a[index] == 1)	
	    ret_val = ret_val + (1 << (31-index));
	}
    }
  return(ret_val);
}

// pack unsigned x into 32 character string pointed
// to by x.
void Unsigned_To_Bit_Vector(unsigned x, char* a)
{
  int index;
  if(a != NULL)
    {
      for(index = 31; index >= 0; index--)
	{
	  if(x & (1 << (31-index)))
	    a[index] = 1;
	  else
	    a[index] = 0;
	}
    }
}

void Copy_Value(char* dest, char* src)
{
  sprintf(dest,"%s",src);
}


void Delete_Port(Port* port)
{
  if(port != NULL)
    {
      if(port->port_value)
	cfree(port->port_value);
      
      cfree(port);
    }
}

void Delete_JobLink(JobLink* top)
{
  if(top->name)
    free(top->name);

  Delete_Port(top->req_port);
  Delete_Port(top->ack_port);


  PortLink* nextplink = NULL;
  PortLink* plink = top->inports.head;
  while(plink != NULL)
    {
      nextplink = plink->next;
      Delete_Port(plink->port);
      cfree(plink);
      
      plink = nextplink;
    }
  top->inports.head = top->inports.tail = NULL;


  plink = top->outports.head;
  while(plink != NULL)
    {
      nextplink = plink->next;
      Delete_Port(plink->port);
      cfree(plink);
      
      plink = nextplink;
    }
  top->outports.head = top->outports.tail = NULL;

  cfree(top);
}

///////////////////////////////////////////////////////////////////////////////////////////////
// network-related stuff.
///////////////////////////////////////////////////////////////////////////////////////////////

// dang! parsing with strtok again!
void Append_To_JobList(char* receive_buffer,int socket_id, JobList *jobs)
{

#ifdef DEBUG
  fprintf(stderr,"Info: appending to JobList in cycle %d\n", cycle_count);
#endif 

  JobLink* new_job = NULL;

  new_job = (JobLink*) calloc(1,sizeof(JobLink));
  new_job->socket_id = socket_id;
  new_job->index = free_job_index;
  free_job_index++;
  
      // format:  "piperead/pipewrite/call  name  num-inp (value)* num-op (width)* 
  char* save_ptr;
  char* type_of_request = strtok_r(receive_buffer," ",&save_ptr);
  
  // what type of request is it?
  if(strcmp(type_of_request,"piperead") == 0)
    {
      new_job->is_pipe_read_access = 1;
    }
  else if(strcmp(type_of_request,"pipewrite") == 0)
    {
      new_job->is_pipe_write_access = 1;
    }
  else if(strcmp(type_of_request,"call") == 0)
    {
      new_job->is_module_access = 1;
    }
  else
    {
      fprintf(stderr,"Error: unknown request type : %s\n", type_of_request);
      Delete_JobLink(new_job);
      return;
    }
  
  
  char* name = strtok_r(NULL," ",&save_ptr);
  assert(name != NULL);
  
  new_job->name = strdup(name);
  
  // every job has a request and acknowledge port.
  new_job->req_port = (Port*) calloc(1, sizeof(Port));
  new_job->req_port->index = 0;
  new_job->req_port->width = 1;
  new_job->req_port->port_value = (char*) calloc(1,2*sizeof(char));
  sprintf(new_job->req_port->port_value,"1");
  
  new_job->ack_port = (Port*) calloc(1, sizeof(Port));
  new_job->ack_port->index = 0;
  new_job->ack_port->width = 1;
  new_job->ack_port->port_value = (char*) calloc(1,2*sizeof(char));
  sprintf(new_job->ack_port->port_value,"0");
  
  
  // the number of inputs?
  char* num_inputs = strtok_r(NULL," ",&save_ptr);
  assert(num_inputs != NULL);
  int ninp = atoi(num_inputs);
  
  // read each input value..
  int idx;
  for(idx = 0; idx < ninp; idx++)
    {
      char* ip_value = strtok_r(NULL," ",&save_ptr);
      assert(ip_value != NULL);

      // each input is  a port.
      Port* p = (Port*) calloc(1, sizeof(Port));
      p->index = idx;
      p->width = strlen(ip_value);
      p->port_value = strdup(ip_value);
	  
      PortLink* plink = (PortLink*) calloc(1,sizeof(PortLink));
      plink->port = p;

      APPEND(new_job->inports, plink);
    }
      
  // the number of outputs?
  char* num_outputs = strtok_r(NULL," ",&save_ptr);
  assert(num_outputs != NULL);
  int nops = atoi(num_outputs);

  // get the output widths.
  for(idx = 0; idx < nops; idx++)
    {
      char* ip_width = strtok_r(NULL," ",&save_ptr);
      assert(ip_width != NULL);

      int iw = atoi(ip_width);

      // new port for each output.
      Port* p = (Port*) calloc(1, sizeof(Port));
      p->index = idx;
      p->width = iw;
      p->port_value = (char*) calloc(1, (iw+2)*sizeof(char));

      PortLink* plink = (PortLink*) calloc(1,sizeof(PortLink));
      plink->port = p;

      APPEND(new_job->outports, plink);
    }

  // append the job.
  APPEND((*jobs),new_job);

#ifdef DEBUG
  fprintf(stderr,"Info: finished appending job to JobList in cycle %d\n", cycle_count);
#endif 
}

static void Vhpi_Exit(int sig)
{
  fprintf(stderr, "*** Break! ***\n");
  fprintf(stderr,"Info: Stopping the simulation \n");
  Vhpi_Close();
  exit(0);
}

///////////////////////////////////////////////////////////////////////////////////////////////
// The main Vhpi functions.
///////////////////////////////////////////////////////////////////////////////////////////////
void  Vhpi_Initialize()
{

  signal(SIGINT,  Vhpi_Exit);
  signal(SIGTERM, Vhpi_Exit);

  new_jobs.head = NULL;
  new_jobs.tail = NULL;
  
  active_jobs.head = NULL;
  active_jobs.tail = NULL;

  finished_jobs.head = NULL;
  finished_jobs.tail = NULL;

  int try_limit = 100;

  // open the socket. and start listening. 
  while(try_limit > 0)
    {

      server_socket_id = create_server(DEFAULT_SERVER_PORT,DEFAULT_MAX_CONNECTIONS);
      if(server_socket_id > 0)
	{
	  fprintf(stderr,"Info: success: started the server on port %d\n",
		  DEFAULT_SERVER_PORT);
	  break;
	}
      else
	fprintf(stderr,"Info: could not start server on port %d, will try again\n",
		DEFAULT_SERVER_PORT);

      usleep(1000);

      try_limit--;

      if(try_limit == 0)
	{
	  fprintf(stderr,"Error: tried to start server on port %d, failed.. giving up\n",
		  DEFAULT_SERVER_PORT);
	  return;
	}
    }
}

void  Vhpi_Close()
{
  // close all connections and the socket.
  fprintf(stderr,"Info: closing VHPI link\n");
  close(server_socket_id);
}


// go down the list of finished jobs and send
// out the resulting port values..
void  Vhpi_Send()
{

#ifdef DEBUG
  fprintf(stderr,"Info: sending in cycle %d\n", cycle_count);
#endif 

  char send_buffer[MAX_BUF_SIZE];
  char spacer_string[2];
  sprintf(spacer_string, " ");
  JobLink* top, *next;


  // first look at all active jobs and see if they
  // can be moved to completed status.
  top = active_jobs.head;
  while (top != NULL)
    {
      if(*(top->ack_port->port_value) == '1') 
	{
	  next = top->next;
	  
	  REMOVE(active_jobs,top);

	  FILE* log_file = fopen(LOG_FILE,"a");
	  fprintf(log_file,"cycle %d finished job %s(%d)\n",
		  cycle_count,
		  top->name,
		  top->index);
	  fclose(log_file);

	  APPEND(finished_jobs,top);

	  top = next;
	}
      else
	{
	  top = top->next;
	}
    }

  // look at all completed jobs and send 
  // the data..
  top = finished_jobs.head;
  while(top != NULL)
    {
      if(can_write_to_socket(top->socket_id))
	{
	  if(top->is_pipe_read_access) 
	    {
	      sprintf(send_buffer,"%s",top->outports.head->port->port_value);
	    }
	  else if( top->is_pipe_write_access)
	    {
	      sprintf(send_buffer,"1");
	    }
	  else if(top->is_module_access)
	    {
	      sprintf(send_buffer,"");
	      PortLink* oplink;
	      for(oplink = top->outports.head; oplink != NULL; oplink = oplink->next)
		{
		  strcat(send_buffer,oplink->port->port_value);
		  strcat(send_buffer,spacer_string);
		}
	    }

#ifdef DEBUG
	  fprintf(stderr,"Info: trying to send message %s in  %d\n", send_buffer, cycle_count);
#endif 

	  send(top->socket_id,send_buffer,strlen(send_buffer)+1,0);

#ifdef DEBUG
	  fprintf(stderr,"Info: successfully message %s in  %d\n", send_buffer, cycle_count);
#endif 

	  next = top->next;

	  REMOVE(finished_jobs,top);
	  Delete_JobLink(top);

	  top = next;
	}
      else
	{
	  top = top->next;
	}
    }
}

void  Vhpi_Listen()
{
  cycle_count++;

#ifdef DEBUG
  fprintf(stderr,"Info: listening in cycle %d\n", cycle_count);
#endif 

  int new_sock;
  while((new_sock = connect_to_client(server_socket_id)) > 0)
    {
      char receive_buffer[MAX_BUF_SIZE];

      // if the client has connected "just now"
      // it must send something!
      int n = receive_string(new_sock,receive_buffer);

      if(n > 0)
	{
#ifdef DEBUG
	  fprintf(stderr,"Info: received message from client %d: %s\n", new_sock, receive_buffer);
#endif
	  Append_To_JobList(receive_buffer, new_sock, &new_jobs);
	}
    }

#ifdef DEBUG
  fprintf(stderr,"Info: finished listening in cycle %d\n", cycle_count);
#endif 
}



void   Vhpi_Set_Port_Value(char* port_name, char* port_value)
{

#ifdef DEBUG
  fprintf(stderr,"Info: setting %s to %s in cycle %d\n",port_name,port_value, cycle_count);
#endif 

  char* save_ptr;
  char* obj_name = strtok_r(port_name," ",&save_ptr);
  char* index_string = strtok_r(NULL," ",&save_ptr);
  assert((obj_name != NULL) && (index_string != NULL));


  // look within jobs that are active.. 
  JobLink* jlink;
  for(jlink = active_jobs.head; jlink != NULL; jlink = jlink->next)
    {
      if(strcmp(jlink->name,obj_name) == 0)
	{
	  if(strcmp(index_string, "ack") == 0)
	    {
	      Copy_Value(jlink->ack_port->port_value, port_value);
	    }
	  else
	    {

	      int index = atoi(index_string);
	      PortLink* plink;
	      for(plink = jlink->outports.head; plink != NULL; plink = plink->next)
		{
		  if(index == 0)
		    {
		      Copy_Value(plink->port->port_value,port_value);
#ifdef DEBUG
  fprintf(stderr,"Info: finished setting %s to %s in cycle %d\n",port_name,port_value, cycle_count);
#endif 
		      break;
		    }
		  index--;
		}
	    }
	}
    }
}

void  Vhpi_Get_Port_Value(char* port_name, char* port_value)
{

#ifdef DEBUG
  fprintf(stderr,"Info: getting value of port %s in cycle %d\n",port_name,cycle_count);
#endif 
  char found_one = 0;
  char* save_ptr;
  char* obj_name = strtok_r(port_name," ",&save_ptr);
  char* index_string = strtok_r(NULL," ",&save_ptr);
  assert((obj_name != NULL) && (index_string != NULL));
  
  int val_found = 0;
  // look within jobs that are active
  JobLink* jlink = NULL;
  for(jlink = active_jobs.head; jlink != NULL; jlink = jlink->next)
    {
      if(strcmp(jlink->name,obj_name) == 0)
	{
	  break;
	}
    }

  // if not found in active, look in the new jobs.
  // if a new job matches, then move the new job to 
  // the active list.
  if(jlink == NULL)
    {
      for(jlink = new_jobs.head; jlink != NULL; jlink = jlink->next)
	{
	  if(strcmp(jlink->name,obj_name) == 0)
	    {
	      REMOVE(new_jobs,jlink);
	      APPEND(active_jobs,jlink);

	      FILE* log_file = fopen(LOG_FILE,"a");
	      fprintf(log_file,"cycle %d started job %s(%d)\n",
		      cycle_count,
		      jlink->name,
		      jlink->index);
	      fclose(log_file);

	      break;
	    }
	}
    }

  if(jlink != NULL)
    {
      if(strcmp(index_string, "req") == 0)
	{
	  Copy_Value(port_value,jlink->req_port->port_value);
	  found_one = 1;
	  if(jlink->is_module_access)
	    {
	      //
	      // reset the port value.. this makes
	      // it a pulse.
	      //
	      *(jlink->req_port->port_value) = '0';
	    }
	}
      else
	{
	  int index = atoi(index_string);
	  PortLink* plink;
	  for(plink = jlink->inports.head; plink != NULL; plink = plink->next)
	    {
	      if(index == 0)
		{
		  Copy_Value(port_value, plink->port->port_value);
		  found_one = 1;
		  break;
		}
	      index--;
	    }
	}
    }
  else
    {
      // didnt find it, write zero into it..
      sprintf(port_value,z32__);
    }

#ifdef DEBUG
  if(found_one)
    fprintf(stderr,"Info: returning value of port %s as %s\n", port_name, port_value);
  else
    fprintf(stderr,"Info: port %s not active, returning %s\n", port_name, port_value);
#endif
}



#ifdef GHDL


int main(int argc, char **argv)
{
  int ret_val;
  signal(SIGINT,  Vhpi_Exit);
  signal(SIGTERM, Vhpi_Exit);
  ret_val = (ghdl_main(argc,argv));
  return(ret_val);
}

#endif


#ifdef MODELSIM

void   Modelsim_FLI_Initialize()
{
  Vhpi_Initialize();
}

void   Modelsim_FLI_Close()
{
  Vhpi_Close();
}
void   Modelsim_FLI_Listen()
{
  Vhpi_Listen();
}

void   Modelsim_FLI_Send()
{
  Vhpi_Send();
}

void Modelsim_FLI_Set_Port_Value(mtiVariableIdT reg_id, mtiVariableIdT reg_val_id)
{
  char name_buffer[4096];
  char val_buffer[4096];

  Modelsim_FLI_To_String(name_buffer,reg_id);
  Modelsim_FLI_To_String(val_buffer,reg_val_id);

  Vhpi_Set_Port_Value(name_buffer,val_buffer);
}

void Modelsim_FLI_Get_Port_Value(mtiVariableIdT reg_id, mtiVariableIdT reg_val_id)
{
  char name_buffer[4096];
  char val_buffer[4096];
  
  Modelsim_FLI_To_String(name_buffer,reg_id);
 
  Vhpi_Get_Port_Value(name_buffer,val_buffer);
  
  String_To_Modelsim_FLI(reg_val_id,val_buffer);
}


void Modelsim_FLI_To_String(char* ret_string, mtiVariableIdT vsim_str)
{
  mtiTypeIdT type;
  int len;

  mti_GetArrayVarValue(vsim_str, ret_string);

  type = mti_GetVarType(vsim_str);
  len = mti_TickLength(type);

  ret_string[len] = 0;
}


void String_To_Modelsim_FLI(mtiVariableIdT vsim_str, char* from_string)
{
  char* val = mti_GetArrayVarValue(vsim_str, NULL);
  int len = mti_TickLength(mti_GetVarType(vsim_str));

  int idx;

  assert(strlen(from_string) < len);
  for(idx = 0; idx < strlen(from_string); idx++)
    {
      val[idx] = from_string [idx];
    }
}

#endif

