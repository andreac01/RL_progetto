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
IKI_DLLESPEC extern void execute_647(char*, char *);
IKI_DLLESPEC extern void execute_648(char*, char *);
IKI_DLLESPEC extern void execute_649(char*, char *);
IKI_DLLESPEC extern void execute_650(char*, char *);
IKI_DLLESPEC extern void execute_35(char*, char *);
IKI_DLLESPEC extern void execute_38(char*, char *);
IKI_DLLESPEC extern void execute_41(char*, char *);
IKI_DLLESPEC extern void execute_43(char*, char *);
IKI_DLLESPEC extern void execute_44(char*, char *);
IKI_DLLESPEC extern void execute_45(char*, char *);
IKI_DLLESPEC extern void execute_55(char*, char *);
IKI_DLLESPEC extern void execute_57(char*, char *);
IKI_DLLESPEC extern void execute_58(char*, char *);
IKI_DLLESPEC extern void execute_93(char*, char *);
IKI_DLLESPEC extern void execute_94(char*, char *);
IKI_DLLESPEC extern void execute_97(char*, char *);
IKI_DLLESPEC extern void execute_100(char*, char *);
IKI_DLLESPEC extern void execute_150(char*, char *);
IKI_DLLESPEC extern void execute_151(char*, char *);
IKI_DLLESPEC extern void execute_152(char*, char *);
IKI_DLLESPEC extern void execute_218(char*, char *);
IKI_DLLESPEC extern void execute_227(char*, char *);
IKI_DLLESPEC extern void execute_415(char*, char *);
IKI_DLLESPEC extern void execute_418(char*, char *);
IKI_DLLESPEC extern void execute_487(char*, char *);
IKI_DLLESPEC extern void execute_503(char*, char *);
IKI_DLLESPEC extern void execute_540(char*, char *);
IKI_DLLESPEC extern void execute_614(char*, char *);
IKI_DLLESPEC extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_157(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_164(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_171(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_185(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_199(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_220(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_227(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_234(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_241(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_248(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_255(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_262(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_269(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_276(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_283(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_290(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_297(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_304(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_311(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_332(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_339(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_346(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_353(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_361(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_368(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_375(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_382(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_389(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_396(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_403(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_410(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_417(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_424(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_431(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_438(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_445(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_452(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_459(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_466(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_473(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_480(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_487(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_494(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_501(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_508(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_515(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_522(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_529(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_536(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_543(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_550(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_557(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_564(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_571(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_578(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[100] = {(funcp)execute_647, (funcp)execute_648, (funcp)execute_649, (funcp)execute_650, (funcp)execute_35, (funcp)execute_38, (funcp)execute_41, (funcp)execute_43, (funcp)execute_44, (funcp)execute_45, (funcp)execute_55, (funcp)execute_57, (funcp)execute_58, (funcp)execute_93, (funcp)execute_94, (funcp)execute_97, (funcp)execute_100, (funcp)execute_150, (funcp)execute_151, (funcp)execute_152, (funcp)execute_218, (funcp)execute_227, (funcp)execute_415, (funcp)execute_418, (funcp)execute_487, (funcp)execute_503, (funcp)execute_540, (funcp)execute_614, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_53, (funcp)transaction_102, (funcp)transaction_109, (funcp)transaction_116, (funcp)transaction_122, (funcp)transaction_129, (funcp)transaction_136, (funcp)transaction_143, (funcp)transaction_150, (funcp)transaction_157, (funcp)transaction_164, (funcp)transaction_171, (funcp)transaction_178, (funcp)transaction_185, (funcp)transaction_192, (funcp)transaction_199, (funcp)transaction_206, (funcp)transaction_213, (funcp)transaction_220, (funcp)transaction_227, (funcp)transaction_234, (funcp)transaction_241, (funcp)transaction_248, (funcp)transaction_255, (funcp)transaction_262, (funcp)transaction_269, (funcp)transaction_276, (funcp)transaction_283, (funcp)transaction_290, (funcp)transaction_297, (funcp)transaction_304, (funcp)transaction_311, (funcp)transaction_318, (funcp)transaction_325, (funcp)transaction_332, (funcp)transaction_339, (funcp)transaction_346, (funcp)transaction_353, (funcp)transaction_361, (funcp)transaction_368, (funcp)transaction_375, (funcp)transaction_382, (funcp)transaction_389, (funcp)transaction_396, (funcp)transaction_403, (funcp)transaction_410, (funcp)transaction_417, (funcp)transaction_424, (funcp)transaction_431, (funcp)transaction_438, (funcp)transaction_445, (funcp)transaction_452, (funcp)transaction_459, (funcp)transaction_466, (funcp)transaction_473, (funcp)transaction_480, (funcp)transaction_487, (funcp)transaction_494, (funcp)transaction_501, (funcp)transaction_508, (funcp)transaction_515, (funcp)transaction_522, (funcp)transaction_529, (funcp)transaction_536, (funcp)transaction_543, (funcp)transaction_550, (funcp)transaction_557, (funcp)transaction_564, (funcp)transaction_571, (funcp)transaction_578};
const int NumRelocateId= 100;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/project_tb_func_synth/xsim.reloc",  (void **)funcTab, 100);
	iki_vhdl_file_variable_register(dp + 1178800);
	iki_vhdl_file_variable_register(dp + 1178856);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/project_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/project_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/project_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
