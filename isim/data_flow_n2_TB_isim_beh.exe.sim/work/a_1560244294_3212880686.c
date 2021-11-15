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
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;

LAB0:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3624);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t4 = (t0 + 2152U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    if (t9 == 0)
        goto LAB9;

LAB13:    if (t9 == 1)
        goto LAB10;

LAB14:    if (t9 == 2)
        goto LAB11;

LAB15:
LAB12:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 6096);
    t5 = (t0 + 3704);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 3768);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 7U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3832);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t2);

LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(21, ng0);
    t4 = (t0 + 6084);
    t11 = (t0 + 3704);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 3768);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 7U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(23, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t16 = (t9 + 1);
    t2 = (t0 + 3832);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t16;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB10:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 6088);
    t5 = (t0 + 3704);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 3768);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 7U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t16 = (t9 + 1);
    t2 = (t0 + 3832);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t16;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB11:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 6092);
    t5 = (t0 + 3704);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 3768);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 7U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t16 = (t9 + 1);
    t2 = (t0 + 3832);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t16;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB16:;
}


extern void work_a_1560244294_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1560244294_3212880686_p_0};
	xsi_register_didat("work_a_1560244294_3212880686", "isim/data_flow_n2_TB_isim_beh.exe.sim/work/a_1560244294_3212880686.didat");
	xsi_register_executes(pe);
}
