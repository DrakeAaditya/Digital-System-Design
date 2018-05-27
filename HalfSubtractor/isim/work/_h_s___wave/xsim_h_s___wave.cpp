#include "isim/work/_h_s___wave/_h_s___wave.h"
#include "isim/work/glbl/glbl.h"
static const char * HSimCopyRightNotice = "Copyright 2004-2005, Xilinx Inc. All rights reserved.";


#include "work/_h_s___wave/_h_s___wave.h"
static HSim__s6* IF0(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_h_s___wave(label); 
    return blk;
}


#include "unisim_ver.auxlib/_a_n_d2/_a_n_d2.h"
static HSim__s6* IF1(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_a_n_d2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_i_n_v/_i_n_v.h"
static HSim__s6* IF2(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_i_n_v(label); 
    return blk;
}


#include "unisim_ver.auxlib/_x_o_r2/_x_o_r2.h"
static HSim__s6* IF3(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_x_o_r2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_x_o_r2/_x_o_r2.h"
static HSim__s6* IF4(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_x_o_r2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_i_n_v/_i_n_v.h"
static HSim__s6* IF5(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_i_n_v(label); 
    return blk;
}


#include "unisim_ver.auxlib/_a_n_d2/_a_n_d2.h"
static HSim__s6* IF6(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_a_n_d2(label); 
    return blk;
}


#include "work/_half_subtractor/_half_subtractor.h"
static HSim__s6* IF7(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_half_subtractor(label); 
    return blk;
}


#include "work/glbl/glbl.h"
static HSim__s6* IF8(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workMglbl(label); 
    return blk;
}

class _top : public HSim__s6 {
public:
    _top() : HSim__s6(false, "_top", "_top", 0, 0, HSim::VerilogModule) {}
    HSimConfigDecl * topModuleInstantiate() {
        HSimConfigDecl * cfgvh = 0;
        cfgvh = new HSimConfigDecl("default");
        (*cfgvh).addVlogModule("HS_Wave", (HSimInstFactoryPtr)IF0);
        (*cfgvh).addVlogModule("AND2", (HSimInstFactoryPtr)IF1);
        (*cfgvh).addVlogModule("INV", (HSimInstFactoryPtr)IF2);
        (*cfgvh).addVlogModule("XOR2", (HSimInstFactoryPtr)IF3);
        (*cfgvh).addVlogModule("XOR2", (HSimInstFactoryPtr)IF4);
        (*cfgvh).addVlogModule("INV", (HSimInstFactoryPtr)IF5);
        (*cfgvh).addVlogModule("AND2", (HSimInstFactoryPtr)IF6);
        (*cfgvh).addVlogModule("HalfSubtractor", (HSimInstFactoryPtr)IF7);
        (*cfgvh).addVlogModule("glbl", (HSimInstFactoryPtr)IF8);
        HSim__s5 * topvl = 0;
        topvl = new workM_h_s___wave("HS_Wave");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        topvl = new workMglbl("glbl");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        return cfgvh;
}
};

main(int argc, char **argv) {
  HSimDesign::initDesign();
  globalKernel->getOptions(argc,argv);
  HSim__s6 * _top_i = 0;
  try {
    HSimConfigDecl *cfg;
 _top_i = new _top();
  cfg =  _top_i->topModuleInstantiate();
    return globalKernel->runTcl(cfg, _top_i, "_top", argc, argv);
  }
  catch (HSimError& msg){
    try {
      globalKernel->error(msg.ErrMsg);
      return 1;
    }
    catch(...) {}
      return 1;
  }
  catch (...){
    globalKernel->fatalError();
    return 1;
  }
}
