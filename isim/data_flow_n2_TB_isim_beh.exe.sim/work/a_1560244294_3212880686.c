/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/ISE_Projects/digital_watch_n2/display_changer.vhd";



static void work_a_1560244294_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    if (t3 == 0)
        goto LAB3;

LAB7:    if (t3 == 1)
        goto LAB4;

LAB8:    if (t3 == 2)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 6088);
    t4 = (t0 + 3704);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3768);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 7U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 3832);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);

LAB2:    t1 = (t0 + 3624);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 6076);
    t5 = (t0 + 3704);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 3768);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 7U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(22, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t10 = (t3 + 1);
    t1 = (t0 + 3832);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t10;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 6080);
    t4 = (t0 + 3704);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3768);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 7U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t10 = (t3 + 1);
    t1 = (t0 + 3832);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t10;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 6084);
    t4 = (t0 + 3704);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3768);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 7U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(30, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t10 = (t3 + 1);
    t1 = (t0 + 3832);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t10;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB10:;
}


extern void work_a_1560244294_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1560244294_3212880686_p_0};
	xsi_register_didat("work_a_1560244294_3212880686", "isim/data_flow_n2_TB_isim_beh.exe.sim/work/a_1560244294_3212880686.didat");
	xsi_register_executes(pe);
}
