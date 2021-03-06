#include <pthread.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <SocketLib.h>
//
//
void Exit(int sig)
{
	fprintf(stderr, "## Break! ##\n");
	exit(0);
}

void *free_queue_manager_(void* fargs)
{
   free_queue_manager();
}

void *foo_(void* fargs)
{
   foo();
}

void *input_module_(void* fargs)
{
   input_module();
}

void *output_module_(void* fargs)
{
   output_module();
}

void *write_pipe_(void* a)
{
	write_uint32_n("input_data",(uint32_t*)a, 10);
}

void *read_pipe_(void* a)
{
	read_uint32_n("output_data", (uint32_t*)a, 10);
}

int main(int argc, char* argv[])
{
	signal(SIGINT,  Exit);
  	signal(SIGTERM, Exit);
  	signal(SIGSEGV, Exit);

	uint32_t pipe_in[10], pipe_out[10];
        int i;

        for(i = 0; i < 10; i++)
		pipe_in[i] = i;

	pthread_t input_module_t,output_module_t,free_queue_manager_t,foo_t,wpipe_t, rpipe_t;

	//pthread_create(&input_module_t,NULL,&input_module_,NULL);
	//pthread_create(&output_module_t,NULL,&output_module_,NULL);
	//pthread_create(&free_queue_manager_t,NULL,&free_queue_manager_,NULL);
	//pthread_create(&foo_t,NULL,&foo_,NULL);
	pthread_create(&wpipe_t,NULL,&write_pipe_,(void*)pipe_in);
	pthread_create(&rpipe_t,NULL,&read_pipe_,(void*)pipe_out);


	pthread_join(wpipe_t,NULL);
	pthread_join(rpipe_t,NULL);

	//pthread_cancel(input_module_t);
	//pthread_cancel(output_module_t);
	//pthread_cancel(free_queue_manager_t);
	//pthread_cancel(foo_t);

 	fprintf(stdout,"from output_data, we read ");
        for(i = 0; i < 10; i++) 
 	   fprintf(stdout," %d ", pipe_out[i]);
	fprintf(stdout,"\n");
}
