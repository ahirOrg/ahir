#ifndef __CDFGBUILDER_HPP__
#define __CDFGBUILDER_HPP__

#include <llvm/Support/InstVisitor.h>
#include <set>
#include <map>
#include <string>
#include <iostream>

namespace llvm {
  class TargetData;
  class AliasAnalysis;
};


namespace Aa {

  struct AaWriter : public llvm::InstVisitor<AaWriter> {

    AaWriter(llvm::TargetData *_TD, llvm::AliasAnalysis *_AA, std::set<std::string>& module_names, bool consider_all_functions);

    llvm::TargetData *TD;
    llvm::AliasAnalysis *AA;
    llvm::Module* _module;
    int _num_ret_instructions;
    llvm::Value* _unique_return_value;
    std::set<std::string>& _module_names;
    bool _consider_all_functions;

    std::map<std::string,std::set<std::string> > bb_predecessor_map;
    std::map<llvm::Value*, std::string> value_name_map;
    std::map<std::string,std::string> pipe_map;
    std::set<llvm::GlobalVariable*> global_variables_used_in_initialization;
    std::set<llvm::GlobalVariable*> printed_global_variables;

    int _pointer_width;
    void Set_Pointer_Width(int w) { _pointer_width = w; }
    int Get_Pointer_Width() { return(_pointer_width); }

    bool _return_flag;
    void Set_Module(llvm::Module* tst) {_module = tst;}
    llvm::Module& Get_Module() {return(*_module);}
    void Set_Return_Flag(bool v) {_return_flag = v;}
    bool Get_Return_Flag() {return(_return_flag);}

    void clear() { 
      Set_Return_Flag(false); 
      clear_bb_predecessor_map(); 
      value_name_map.clear();
    }

    void Collect_Pipes(llvm::Function& F);
    void Add_Pipe(std::string pname, std::string aa_type_name);
    void Print_Pipe_Declarations(std::ostream& ofile, std::map<std::string, int>& pipe_depths,
					std::set<std::string>& lifo_pipe_set);
    bool Is_Pipe(std::string port_name);

    void start_program(std::string id);
    void print_storage(llvm::GlobalVariable &G);

    void clear_bb_predecessor_map() {bb_predecessor_map.clear();}
    void add_bb_predecessor_map_entry(std::string p, std::string q)
    {
      bb_predecessor_map[p].insert(q);
    }

    std::string get_name(llvm::Value* v);
    std::string prepare_operand(llvm::Value* v);

    void name_all_instructions(llvm::BasicBlock &BB, int& iidx);

    virtual void initialise_with_function(llvm::Function &F) = 0;
    virtual void finalise_function() = 0;

    virtual void Write_PHI_Node(llvm::PHINode& pnode) {};
    virtual void visitBasicBlock(llvm::BasicBlock &BB) {};
    virtual void visitInstruction(llvm::Instruction &I);
    virtual void visitBinaryOperator(llvm::BinaryOperator &I) { visitInstruction(I); }
    virtual void visitReturnInst(llvm::ReturnInst &I) { visitInstruction(I); }
    virtual void visitAllocaInst(llvm::AllocaInst &I) { visitInstruction(I); }
    virtual void visitPHINode(llvm::PHINode &I) { visitInstruction(I); }
    virtual void visitCallInst(llvm::CallInst &I) { visitInstruction(I); }
    virtual void visitSExtInst(llvm::SExtInst& C)  { visitInstruction(C); }
    virtual void visitSIToFPInst(llvm::SIToFPInst& C) { visitInstruction(C); }
    virtual void visitFPToSIInst(llvm::FPToSIInst& C) { visitInstruction(C); }
    virtual void visitCastInst(llvm::CastInst &I) { visitInstruction(I); }
    virtual void visitLoadInst(llvm::LoadInst &I) { visitInstruction(I); }
    virtual void visitStoreInst(llvm::StoreInst &I) { visitInstruction(I); }
    virtual void visitCmpInst(llvm::CmpInst &I) { visitInstruction(I); }
    virtual void visitSelectInst(llvm::SelectInst &I) { visitInstruction(I); }
    virtual void visitBranchInst(llvm::BranchInst &I) { visitInstruction(I); }
    virtual void visitSwitchInst(llvm::SwitchInst &I) { visitInstruction(I); }

    void write_storage_object(llvm::GlobalVariable *G,
			      std::vector<std::string>& init_obj_vector,
			      bool create_initializers,
			      bool skip_zero_initializers);
    void write_zero_initializer_recursive(std::string prefix,const llvm::Type* ptr, int depth);
    void write_storage_initializer_statements(std::string& prefix, llvm::Constant* konst, bool skip_zero_initializers);

  };
};

Aa::AaWriter* AaWriter_New(llvm::TargetData *TD, llvm::AliasAnalysis *AA, std::set<std::string>& mnames, bool consider_all_functions);


#endif
