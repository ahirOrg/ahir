#ifndef __VHDL_DATAPATH_HPP__
#define __VHDL_DATAPATH_HPP__

#include "Entity.hpp"
#include "Assignable.hpp"
#include <Base/Storage.hpp>
#include <Base/ostream.hpp>
#include <set>

namespace hls {
  class Addressable;
}

namespace vhdl {

  class DataPath;

  class DPElement;
  typedef std::vector<DPElement*> MemberList;

  struct DPElement : public Entity 
  {
    hls::NodeType ntype;

    // The memberset is used to ensure that members are not repeated.
    // Users should only use the ``members'' vector for accessing
    // members.
    MemberList members;
    std::set<DPElement*> memberset;
    void register_member(vhdl::DPElement *dpe);

    DPElement *counterpart;
    hls::MemoryLocation *mloc;
    std::string cname;
    std::string callee;
    std::string value;
    std::string portname;
    const hls::Type *type;
    
    std::string component_name() { return cname; }
    std::string instance_name() { return id; }
    void print_instance_hook(hls::ostream &out)
    {
      if (counterpart)
        out << hls::indent << "-- counterpart: " << counterpart->instance_name();
    }
    
    DPElement(const std::string &_id, hls::NodeType _ntype
	      , const std::string &c, const std::string &d
              , const std::string &config = "")
      : Entity(_id, DPE, d), ntype(_ntype)
      , counterpart(NULL), mloc(NULL), cname(c)
      , type(NULL)
    {
      configuration = config;
    }
  };

  inline bool is_wrapper(Entity *entity)
  {
    if (entity->type != DPE)
      return false;             // wrapper implies dpe
    return static_cast<DPElement*>(entity)->members.size() != 0;
  }

  struct DataPath : public Entity
  {
    DPEList wrappers;
    void register_wrapper(vhdl::DPElement *wrapper);
    DPElement* find_wrapper(const std::string &id);

    DPEList elements;
    void register_dpe(vhdl::DPElement *dpe);
    void remove_dpe(vhdl::DPElement *dpe);
    DPElement* find_dpe(const std::string &id);
    DPElement* find_dpe_from_ahir_id(unsigned id);

    DPEList calls;
    DPEList io_elements;
    DPElement *acceptor;
    DPElement *retval;

    AssignMap assign;
    void register_assign(const std::string &lhs, const std::string &rhs);

    unsigned store_lines, load_lines;
    
    std::string component_name() { return id; }
    std::string instance_name() { return id + "_inst"; }
    
    DataPath(const std::string _id, const std::string &d);
  };
}

#endif
