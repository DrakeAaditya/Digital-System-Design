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

#ifndef H_Work_multiplexerdataflow_behavioral_H
#define H_Work_multiplexerdataflow_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_multiplexerdataflow_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[7];

  char t0;
  char t1;
  char t2;
  char t3;
  char t4;
  char t5;
  char t6;
  char t7;
  char t8;
  char t9;
  char t10;
  char t11;
  char t12;
  char t13;
  char t14;
    Work_multiplexerdataflow_behavioral(const char * name);
    ~Work_multiplexerdataflow_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_multiplexerdataflow_behavioral(const char *name);

#endif
