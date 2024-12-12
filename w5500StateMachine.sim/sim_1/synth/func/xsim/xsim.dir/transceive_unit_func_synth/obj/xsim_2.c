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
IKI_DLLESPEC extern void execute_1025(char*, char *);
IKI_DLLESPEC extern void execute_1028(char*, char *);
IKI_DLLESPEC extern void execute_1031(char*, char *);
IKI_DLLESPEC extern void execute_1035(char*, char *);
IKI_DLLESPEC extern void execute_1099(char*, char *);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_6(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_287(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_294(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_301(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_309(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_316(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_323(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_329(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_336(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_343(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_350(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_357(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_364(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_371(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_378(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_386(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_393(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_400(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_406(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_413(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_676(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_683(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_690(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_697(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_704(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_711(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_718(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_725(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_732(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_739(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_746(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_753(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_760(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_767(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_774(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_781(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_788(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_795(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_802(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_809(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_816(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_823(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_830(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_837(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_844(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_851(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[118] = {(funcp)execute_14, (funcp)execute_15, (funcp)execute_16, (funcp)execute_24, (funcp)execute_28, (funcp)execute_32, (funcp)execute_36, (funcp)execute_39, (funcp)execute_42, (funcp)execute_47, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_76, (funcp)execute_80, (funcp)execute_83, (funcp)execute_86, (funcp)execute_90, (funcp)execute_93, (funcp)execute_97, (funcp)execute_100, (funcp)execute_104, (funcp)execute_108, (funcp)execute_111, (funcp)execute_116, (funcp)execute_143, (funcp)execute_147, (funcp)execute_157, (funcp)execute_164, (funcp)execute_167, (funcp)execute_171, (funcp)execute_176, (funcp)execute_179, (funcp)execute_184, (funcp)execute_188, (funcp)execute_197, (funcp)execute_198, (funcp)execute_199, (funcp)execute_225, (funcp)execute_226, (funcp)execute_227, (funcp)execute_228, (funcp)execute_229, (funcp)execute_230, (funcp)execute_231, (funcp)execute_232, (funcp)execute_233, (funcp)execute_478, (funcp)execute_553, (funcp)execute_561, (funcp)execute_566, (funcp)execute_572, (funcp)execute_580, (funcp)execute_583, (funcp)execute_587, (funcp)execute_634, (funcp)execute_695, (funcp)execute_698, (funcp)execute_712, (funcp)execute_724, (funcp)execute_804, (funcp)execute_845, (funcp)execute_1022, (funcp)execute_1025, (funcp)execute_1028, (funcp)execute_1031, (funcp)execute_1035, (funcp)execute_1099, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_6, (funcp)transaction_287, (funcp)transaction_294, (funcp)transaction_301, (funcp)transaction_309, (funcp)transaction_316, (funcp)transaction_323, (funcp)transaction_329, (funcp)transaction_336, (funcp)transaction_343, (funcp)transaction_350, (funcp)transaction_357, (funcp)transaction_364, (funcp)transaction_371, (funcp)transaction_378, (funcp)transaction_386, (funcp)transaction_393, (funcp)transaction_400, (funcp)transaction_406, (funcp)transaction_413, (funcp)transaction_676, (funcp)transaction_683, (funcp)transaction_690, (funcp)transaction_697, (funcp)transaction_704, (funcp)transaction_711, (funcp)transaction_718, (funcp)transaction_725, (funcp)transaction_732, (funcp)transaction_739, (funcp)transaction_746, (funcp)transaction_753, (funcp)transaction_760, (funcp)transaction_767, (funcp)transaction_774, (funcp)transaction_781, (funcp)transaction_788, (funcp)transaction_795, (funcp)transaction_802, (funcp)transaction_809, (funcp)transaction_816, (funcp)transaction_823, (funcp)transaction_830, (funcp)transaction_837, (funcp)transaction_844, (funcp)transaction_851};
const int NumRelocateId= 118;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/transceive_unit_func_synth/xsim.reloc",  (void **)funcTab, 118);
	iki_vhdl_file_variable_register(dp + 250168);
	iki_vhdl_file_variable_register(dp + 250224);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/transceive_unit_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/transceive_unit_func_synth/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/transceive_unit_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/transceive_unit_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/transceive_unit_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
