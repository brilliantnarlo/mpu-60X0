// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vsim_top.h for the primary calling header

#ifndef VERILATED_VSIM_TOP___024ROOT_H_
#define VERILATED_VSIM_TOP___024ROOT_H_  // guard

#include "verilated.h"


class Vsim_top__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vsim_top___024root final {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(jump,0,0);
    VL_IN8(jump_address,7,0);
    VL_OUT8(pc_out,7,0);
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__reset__0;
    CData/*0:0*/ __VactPhaseResult;
    CData/*0:0*/ __VnbaPhaseResult;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<QData/*63:0*/, 1> __VactTriggered;
    VlUnpacked<QData/*63:0*/, 1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vsim_top__Syms* vlSymsp;
    const char* vlNamep;

    // CONSTRUCTORS
    Vsim_top___024root(Vsim_top__Syms* symsp, const char* namep);
    ~Vsim_top___024root();
    VL_UNCOPYABLE(Vsim_top___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
