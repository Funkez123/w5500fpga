/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_14(char*, char *);
IKI_DLLESPEC extern void execute_15(char*, char *);
IKI_DLLESPEC extern void execute_16(char*, char *);
IKI_DLLESPEC extern void execute_24(char*, char *);
IKI_DLLESPEC extern void execute_28(char*, char *);
IKI_DLLESPEC extern void execute_32(char*, char *);
IKI_DLLESPEC extern void execute_36(char*, char *);
IKI_DLLESPEC extern void execute_39(char*, char *);
IKI_DLLESPEC extern void execute_42(char*, char *);
IKI_DLLESPEC extern void execute_47(char*, char *);
IKI_DLLESPEC extern void execute_49(char*, char *);
IKI_DLLESPEC extern void execute_50(char*, char *);
IKI_DLLESPEC extern void execute_51(char*, char *);
IKI_DLLESPEC extern void execute_61(char*, char *);
IKI_DLLESPEC extern void execute_62(char*, char *);
IKI_DLLESPEC extern void execute_63(char*, char *);
IKI_DLLESPEC extern void execute_76(char*, char *);
IKI_DLLESPEC extern void execute_80(char*, char *);
IKI_DLLESPEC extern void execute_83(char*, char *);
IKI_DLLESPEC extern void execute_86(char*, char *);
IKI_DLLESPEC extern void execute_90(char*, char *);
IKI_DLLESPEC extern void execute_93(char*, char *);
IKI_DLLESPEC extern void execute_97(char*, char *);
IKI_DLLESPEC extern void execute_100(char*, char *);
IKI_DLLESPEC extern void execute_104(char*, char *);
IKI_DLLESPEC extern void execute_108(char*, char *);
IKI_DLLESPEC extern void execute_111(char*, char *);
IKI_DLLESPEC extern void execute_116(char*, char *);
IKI_DLLESPEC extern void execute_143(char*, char *);
IKI_DLLESPEC extern void execute_147(char*, char *);
IKI_DLLESPEC extern void execute_157(char*, char *);
IKI_DLLESPEC extern void execute_164(char*, char *);
IKI_DLLESPEC extern void execute_167(char*, char *);
IKI_DLLESPEC extern void execute_171(char*, char *);
IKI_DLLESPEC extern void execute_176(char*, char *);
IKI_DLLESPEC extern void execute_179(char*, char *);
IKI_DLLESPEC extern void execute_184(char*, char *);
IKI_DLLESPEC extern void execute_188(char*, char *);
IKI_DLLESPEC extern void execute_197(char*, char *);
IKI_DLLESPEC extern void execute_198(char*, char *);
IKI_DLLESPEC extern void execute_199(char*, char *);
IKI_DLLESPEC extern void execute_225(char*, char *);
IKI_DLLESPEC extern void execute_226(char*, char *);
IKI_DLLESPEC extern void execute_227(char*, char *);
IKI_DLLESPEC extern void execute_228(char*, char *);
IKI_DLLESPEC extern void execute_229(char*, char *);
IKI_DLLESPEC extern void execute_230(char*, char *);
IKI_DLLESPEC extern void execute_231(char*, char *);
IKI_DLLESPEC extern void execute_232(char*, char *);
IKI_DLLESPEC extern void execute_233(char*, char *);
IKI_DLLESPEC extern void execute_478(char*, char *);
IKI_DLLESPEC extern void execute_553(char*, char *);
IKI_DLLESPEC extern void execute_561(char*, char *);
IKI_DLLESPEC extern void execute_566(char*, char *);
IKI_DLLESPEC extern void execute_572(char*, char *);
IKI_DLLESPEC extern void execute_580(char*, char *);
IKI_DLLESPEC extern void execute_583(char*, char *);
IKI_DLLESPEC extern void execute_587(char*, char *);
IKI_DLLESPEC extern void execute_634(char*, char *);
IKI_DLLESPEC extern void execute_695(char*, char *);
IKI_DLLESPEC extern void execute_698(char*, char *);
IKI_DLLESPEC extern void execute_712(char*, char *);
IKI_DLLESPEC extern void execute_724(char*, char *);
IKI_DLLESPEC extern void execute_804(char*, char *);
IKI_DLLESPEC extern void execute_845(char*, char *);
IKI_DLLESPEC extern void execute_1022(char*, char *);
IKI_DLLESPEC extern void execute_1024(char*, char *);
IKI_DLLESPEC extern void execute_1027(char*, char *);
IKI_DLLESPEC extern void execute_1030(char*, char *);
IKI_DLLESPEC extern void execute_1033(char*, char *);
IKI_DLLESPEC extern void execute_1037(char*, char *);
IKI_DLLESPEC extern void execute_1101(char*, char *);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_6(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_288(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_295(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_302(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_310(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_317(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_324(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_330(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_337(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_344(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_351(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_358(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_365(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_372(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_379(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_387(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_394(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_401(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_407(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_414(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_677(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_684(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_691(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_698(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_705(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_712(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_719(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_726(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_733(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_740(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_747(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_754(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_761(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_768(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_775(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_782(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_789(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_796(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_803(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_810(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_817(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_824(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_831(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_838(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_845(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_852(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[119] = {(funcp)execute_14, (funcp)execute_15, (funcp)execute_16, (funcp)execute_24, (funcp)execute_28, (funcp)execute_32, (funcp)execute_36, (funcp)execute_39, (funcp)execute_42, (funcp)execute_47, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_76, (funcp)execute_80, (funcp)execute_83, (funcp)execute_86, (funcp)execute_90, (funcp)execute_93, (funcp)execute_97, (funcp)execute_100, (funcp)execute_104, (funcp)execute_108, (funcp)execute_111, (funcp)execute_116, (funcp)execute_143, (funcp)execute_147, (funcp)execute_157, (funcp)execute_164, (funcp)execute_167, (funcp)execute_171, (funcp)execute_176, (funcp)execute_179, (funcp)execute_184, (funcp)execute_188, (funcp)execute_197, (funcp)execute_198, (funcp)execute_199, (funcp)execute_225, (funcp)execute_226, (funcp)execute_227, (funcp)execute_228, (funcp)execute_229, (funcp)execute_230, (funcp)execute_231, (funcp)execute_232, (funcp)execute_233, (funcp)execute_478, (funcp)execute_553, (funcp)execute_561, (funcp)execute_566, (funcp)execute_572, (funcp)execute_580, (funcp)execute_583, (funcp)execute_587, (funcp)execute_634, (funcp)execute_695, (funcp)execute_698, (funcp)execute_712, (funcp)execute_724, (funcp)execute_804, (funcp)execute_845, (funcp)execute_1022, (funcp)execute_1024, (funcp)execute_1027, (funcp)execute_1030, (funcp)execute_1033, (funcp)execute_1037, (funcp)execute_1101, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_6, (funcp)transaction_288, (funcp)transaction_295, (funcp)transaction_302, (funcp)transaction_310, (funcp)transaction_317, (funcp)transaction_324, (funcp)transaction_330, (funcp)transaction_337, (funcp)transaction_344, (funcp)transaction_351, (funcp)transaction_358, (funcp)transaction_365, (funcp)transaction_372, (funcp)transaction_379, (funcp)transaction_387, (funcp)transaction_394, (funcp)transaction_401, (funcp)transaction_407, (funcp)transaction_414, (funcp)transaction_677, (funcp)transaction_684, (funcp)transaction_691, (funcp)transaction_698, (funcp)transaction_705, (funcp)transaction_712, (funcp)transaction_719, (funcp)transaction_726, (funcp)transaction_733, (funcp)transaction_740, (funcp)transaction_747, (funcp)transaction_754, (funcp)transaction_761, (funcp)transaction_768, (funcp)transaction_775, (funcp)transaction_782, (funcp)transaction_789, (funcp)transaction_796, (funcp)transaction_803, (funcp)transaction_810, (funcp)transaction_817, (funcp)transaction_824, (funcp)transaction_831, (funcp)transaction_838, (funcp)transaction_845, (funcp)transaction_852};
const int NumRelocateId= 119;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/transceive_unit_func_impl/xsim.reloc",  (void **)funcTab, 119);
	iki_vhdl_file_variable_register(dp + 250400);
	iki_vhdl_file_variable_register(dp + 250456);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/transceive_unit_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/transceive_unit_func_impl/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/transceive_unit_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/transceive_unit_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/transceive_unit_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
