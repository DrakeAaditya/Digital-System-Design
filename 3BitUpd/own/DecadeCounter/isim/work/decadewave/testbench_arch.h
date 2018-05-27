////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_decadewave_testbench_arch_H
#define H_Work_decadewave_testbench_arch_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_decadewave_testbench_arch: public HSim__s6 {
public:


HSimFileVar Results;
HSim__s4 VL;
HSimAccessVar VP;
HSim__s4 CT;
HSim__s4 CX;
HSim__s4 C10;
    HSim__s1 SA[5];
    Work_decadewave_testbench_arch(const char * name);
    ~Work_decadewave_testbench_arch();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_decadewave_testbench_arch(const char *name);

#endif
