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

#ifndef H_Work_demux_4_to_1_func_H
#define H_Work_demux_4_to_1_func_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_demux_4_to_1_func: public HSim__s6 {
public:

    HSim__s1 SE[7];

    HSim__s1 SA[2];
    Work_demux_4_to_1_func(const char * name);
    ~Work_demux_4_to_1_func();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_demux_4_to_1_func(const char *name);

#endif
