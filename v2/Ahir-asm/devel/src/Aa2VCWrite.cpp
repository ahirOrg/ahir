#include <AaProgram.h>
#include <Aa2VC.h>

void Write_VC_Equivalence_Operator(string inst_name,
				   string input,
				   string output,
				   ostream& ofile)
{
  vector<string> i; i.push_back(input);
  vector<string> o; o.push_back(output);
  Write_VC_Equivalence_Operator(inst_name,i,o,ofile);
}

void Write_VC_Constant_Declaration(string wire_name, AaType* t, string initial_value,
				   ostream& ofile)
{
  AaValue* v = Make_Aa_Value(NULL,t);
  v->Set_Value(initial_value);
  Write_VC_Constant_Declaration(wire_name, t, v, ofile);
  delete v;
}


void Write_VC_Constant_Declaration(string wire_name, string type_name, string initial_value, 
				   ostream& ofile)
{
  ofile << "$constant $W[" << wire_name << "] : " << type_name << " := " << initial_value << endl; 
}

void Write_VC_Constant_Declaration(string name, AaType* type, AaValue* value, ostream& ofile)
{
  Write_VC_Constant_Declaration(name,
				type->Get_VC_Name(),
				value->To_VC_String() + "// " + value->To_C_String(),
				ofile);
}

void Write_VC_Constant_Pointer_Declaration(string name, 
					   string wire_name, 
					   AaUintType* type, 
					   string value,
					   ostream& ofile)
{
  string type_name = "$pointer<" + name + ">";
  AaValue* v = Make_Aa_Value(NULL,type);
  v->Set_Value(value);
  Write_VC_Constant_Declaration(wire_name,
				type_name,
				v->To_VC_String(),
				ofile);
  delete v;
}



void Write_VC_Wire_Declaration(string wire_name, string type_name, ostream& ofile)
{
  ofile << "$W[" << wire_name << "] : " << type_name << endl;
}

void Write_VC_Equivalence_Operator(string inst_name,
				   vector<string>& inwires,
				   vector<string>& outwires,
				   ostream& ofile)
{
  ofile << "&/ [" << inst_name << "] ";
  ofile << "(";
  for(int idx=0; idx < inwires.size(); idx++)
    {
      if(idx > 0)
	ofile << " ";
      ofile << inwires[idx];
    }
  ofile << ") ";

  ofile << "(";
  for(int idx=0; idx < outwires.size(); idx++)
    {
      if(idx > 0)
	ofile << " ";
      ofile << outwires[idx];
    }
  ofile << ") " << endl;

}

bool Is_Trivial_VC_Type_Conversion(AaType* src_type, AaType* target_type)
{
  bool ret_val;
  if((target_type == src_type) || 
     (target_type->Is_Uinteger_Type() && src_type->Is_Uinteger_Type()))
    ret_val = true;
  else
    ret_val = false;

  return(ret_val);
}

void Write_VC_Unary_Operator(AaOperation op, 
			     string inst_name, 
			     string src_name, 
			     AaType* src_type,
			     string target_name,
			     AaType* target_type,
			     ostream& ofile)
{
  string op_name;
  if(op == __NOT)
    {
      op_name = "~";
    }
  else
    {
      if(op == __NOP)
	{
	  // the assign operation is multifaceted!
	  string src_kind, dest_kind;

	  dest_kind = ((target_type->Is("AaFloatType")) ? "F" :
		       (target_type->Is("AaIntType") ? "S" : "U"));

	  src_kind = ((src_type->Is("AaFloatType")) ? "F" :
		       (src_type->Is("AaIntType") ? "S" : "U"));

	  if((target_type == src_type) || ( (dest_kind == "U" && src_kind == "U")))
	    {
	      // just register it..
	      op_name = ":=";
	    }
	  else
	    op_name = "$" + dest_kind + ":=$" + src_kind;

	}
      else
	{
	  assert(0);
	}
    }

  ofile << op_name << " [" << inst_name << "] "
	<< "(" << src_name << ") "
	<< "(" << target_name << ")" << endl;
}


void Write_VC_Register( string inst_name, 
			string src_name, 
			string target_name,
			ostream& ofile)
{
  ofile << ":= [" << inst_name << "] " 
	<< "(" << src_name << ") "
	<< "(" << target_name << ")" << endl;
}

void Write_VC_Binary_Operator(AaOperation op, 
			      string inst_name, 
			      string src1, 
			      AaType* src1_type,
			      string src2, 
			      AaType* src2_type, 
			      string target_name,
			      AaType* target_type,
			      ostream& ofile)
{
  string op_name;

  if(op == __OR) op_name = "|";
  else if(op == __AND) op_name = "&";
  else if(op == __XOR) op_name = "^";
  else if(op == __NOR) op_name = "~|";
  else if(op == __NAND) op_name = "~&";
  else if(op == __XNOR) op_name = "~^";
  else if(op == __SHL) op_name = "<<";
  //\todo: for SHR, if the types of src1,src2 are integer,
  //       then we use the signed version.
  else if(op == __SHR)
    {
      if(target_type->Is("AaIntType"))
	op_name = "$S>>";
      else
	op_name = ">>";
    }
  else if(op == __PLUS) op_name = "+";
  else if(op == __MINUS) op_name = "-";
  else if(op == __MUL) op_name = "*";
  else if(op == __DIV) op_name = "/";
  else if(op == __EQUAL) op_name = "==";
  else if(op == __NOTEQUAL) op_name = "!=";
  //
  //\todo: for comparisons, if the types of src1,src2 are integer,
  //       then we use the signed version.
  else if(op == __LESS)
    {
      if(src1_type->Is("AaIntType") || src1_type->Is("AaFloatType"))
	op_name = "$S<$S";
      else
	op_name = "<";
    }
  else if(op == __LESSEQUAL) 
    {
      if(src1_type->Is("AaIntType") || src1_type->Is("AaFloatType"))
	op_name = "$S<=$S";
      else 
	op_name = "<=";
    }
  else if(op == __GREATER)
    {
      if(src1_type->Is("AaIntType") || src1_type->Is("AaFloatType"))
	op_name = "$S>$S";
      else 
	op_name = ">";
    }
  else if(op == __GREATEREQUAL)
    {
      if(src1_type->Is("AaIntType") || src1_type->Is("AaFloatType"))
	op_name = "$S>=$S";
      else 
	op_name = ">=";
    }
  else if(op == __CONCAT) op_name = "&&";
  else if(op == __BITSEL) op_name = "[]";
  else
    assert(0);

  ofile << op_name << "[" << inst_name << "]" << " "
	<< "(" << src1 << " " << src2 << ") "
	<< "(" << target_name << ")" << endl;
}

void Write_VC_Call_Operator(string inst_name, 
			    string module_name, 
			    vector<pair<string,AaType*> >& inargs,
			    vector<pair<string,AaType*> >& outargs,
			    ostream& ofile)
{
  ofile << "$call [" << inst_name << "] $module " << module_name 
	<< "(";
  for(int idx = 0; idx < inargs.size(); idx++)
    {
      if(idx > 0)
	ofile <<  " ";
      ofile << inargs[idx].first;
    }
  ofile << ") (";
  for(int idx = 0; idx < outargs.size(); idx++)
    {
      if(idx > 0)
	ofile <<  " ";
      ofile << outargs[idx].first;
    }
  ofile << ")" << endl;
}

void Write_VC_Phi_Operator(string inst_name,
			   vector<pair<string,AaType*> >& sources,
			   string target,
			   AaType* target_type,
			   ostream& ofile)
{
  ofile << "$phi [" << inst_name << "] " ;
  ofile << "(";
  for(int idx = 0; idx < sources.size(); idx++)
    {
      if(idx > 0)
	ofile << " ";
      ofile << sources[idx].first;
    }
  ofile << ") ";
  ofile << "( " << target << " )"  << endl;
}

void Write_VC_Link(string inst_name, vector<string>& reqs, vector<string>& acks, ostream& ofile)
{
  ofile << inst_name << " <=> (" ;
  for(int idx = 0; idx < reqs.size(); idx++)
    {
      if(idx > 0) ofile << " ";
      ofile << reqs[idx];
    }
  ofile << ") (";
  for(int idx = 0; idx < acks.size(); idx++)
    {
      if(idx > 0) ofile << " ";
      ofile << acks[idx];
    }
  ofile << ")" << endl;
}
void Write_VC_Branch_Instance(string inst_name, vector<pair<string,AaType*> >& br_inputs, ostream& ofile)
{
  ofile << "==0? [" << inst_name << "] (";
  for(int idx = 0; idx < br_inputs.size(); idx++)
    {
      if(idx > 0)
	ofile << " ";
      ofile << br_inputs[idx].first;
    }
  ofile << ")" << endl;
}
void Write_VC_Pointer_Declaration(string name, string wire_name, AaType* type,ostream& ofile)
{
  string type_name = "$pointer<" + name + ">";
  Write_VC_Wire_Declaration(wire_name,
			    type_name,
			    ofile);
}

void Write_VC_Wire_Declaration(string name, AaType* type, ostream& ofile)
{
  string type_name = type->Get_VC_Name();
  Write_VC_Wire_Declaration(name,
			    type_name,
			    ofile);
}

void Write_VC_Intermediate_Wire_Declaration(string name, AaType* type, ostream& ofile)
{
  string type_name = type->Get_VC_Name();
  ofile << "$intermediate ";
  Write_VC_Wire_Declaration(name,
			    type_name,
			    ofile);
}


void Write_VC_Pipe_Declaration(string name, int width,int depth, bool lifo_mode, ostream& ofile)
{
  if(lifo_mode)
	ofile << "$lifo ";
  
  ofile << "$pipe [" << name << "] " << width << " " << "$depth " << depth << endl;
}

void Write_VC_Memory_Space_Declaration(string space_name, string obj_name, AaType* type, ostream& ofile)
{
  assert(0);
}

void Write_VC_Load_Operator(string ms_name, string inst_name, string data_name, string addr_name,
			    ostream& ofile)
{
  ofile << "$load [" << inst_name << "] $from " << ms_name 
	<< " (" << addr_name  << ") (" << data_name << ")" << endl;
}
void Write_VC_Store_Operator(string ms_name, string inst_name, string data_name, string addr_name,
			     ostream& ofile)
{
  ofile << "$store [" << inst_name << "] $to " << ms_name 
	<< " (" << addr_name  << " " << data_name << ")" << endl;
}
void Write_VC_IO_Input_Port(AaPipeObject* obj, string inst_name, string data_name,
			    ostream& ofile)
{
  ofile << "$ioport $in [" << inst_name  << "] (" << obj->Get_VC_Name() << ") ("
	<< data_name << ")" << endl;
}
void Write_VC_IO_Output_Port(AaPipeObject* obj, string inst_name, string data_name,
			     ostream& ofile)
{
  ofile << "$ioport $out [" << inst_name  << "] "
	<< " (" << data_name << ") " 
	<< "(" << obj->Get_VC_Name() << ")"
	<< endl;
}

void Write_VC_Select_Operator(string inst_name,
			      string test_name,
			      AaType* test_type,
			      string if_true_name,
			      AaType* if_true_type,
			      string if_false_name,
			      AaType* if_false_type,
			      string target_name,
			      AaType* target_type,
			      ostream& ofile)
{
  ofile << "? [" << inst_name << "] " 
	<< "(" << test_name << " " << if_true_name << " " << if_false_name << ") "
	<< "(" << target_name << ")" << endl;
}


void Write_VC_Slice_Operator(string inst_name,
			     string in_name,
			     string out_name,
			     int high_index,
			     int low_index,
			     ostream& ofile)
{
  ofile << "[:] [" << inst_name << "] (" << in_name << " " << high_index << " " << low_index
	<< ") (" << out_name << ")" << endl;
}


void Write_VC_Load_Store_Dependency(AaExpression* src,
				    AaExpression* tgt,
				    ostream& ofile)
{
  int ms_index = src->Get_VC_Memory_Space_Index();

  if(ms_index >= 0)
  { 
  	ofile << "// " << src->To_String() << (src->Is_Load() ? "(load)" : "(store)" )
		<<  " -> " 
		<< tgt->To_String()  << (tgt->Is_Load() ? "(load)" : "(store)" ) << endl;
	assert(ms_index == tgt->Get_VC_Memory_Space_Index());

	AaMemorySpace* ms = AaProgram::Get_Memory_Space(ms_index);
	
	assert(ms != NULL);

	if(ms->Get_Is_Ordered())
	{
  		ofile << tgt->Get_VC_Start_Transition_Name() << " <-& (" 
			<< src->Get_VC_Active_Transition_Name() << ")" << endl;
	}
	else
	{
  		ofile << tgt->Get_VC_Start_Transition_Name() << " <-& (" 
			<< src->Get_VC_Completed_Transition_Name() << ")" << endl;
	}
   }
}


void Write_VC_Pipe_Dependency(AaExpression* src,
			      AaExpression* tgt,
			      ostream& ofile)
{
  string tgt_start = (tgt->Get_VC_Start_Transition_Name());
  ofile << tgt_start << " <-& (" <<  src->Get_VC_Complete_Region_Name() << ")" << endl;
}
