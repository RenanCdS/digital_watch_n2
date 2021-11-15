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
static const char *ng0 = "/home/ise/ISE_Projects/digital_watch_n2/timer_controller.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3663596471_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 7048);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 11160U);
    t6 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t5, t1);
    t7 = (t6 * 10);
    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t8 = (t0 + 11176U);
    t10 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t9, t8);
    t11 = (t7 + t10);
    t12 = (t0 + 7256);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((int *)t16) = t11;
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 11192U);
    t6 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t2, t1);
    t7 = (t6 * 10);
    t5 = (t0 + 1832U);
    t8 = *((char **)t5);
    t5 = (t0 + 11208U);
    t10 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t8, t5);
    t11 = (t7 + t10);
    t9 = (t0 + 7320);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((int *)t15) = t11;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 7384);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2952U);
    t5 = *((char **)t2);
    t6 = *((int *)t5);
    t7 = (t6 + 1);
    t2 = (t0 + 7384);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t7;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t3 = (t6 >= 59);
    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t7 = *((int *)t5);
    t10 = (t7 + 1);
    t1 = (t0 + 7320);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 7384);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t3 = (t6 >= 59);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 7320);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t7 = (t6 + 1);
    t1 = (t0 + 7256);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = t7;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t3 = (t6 >= 23);
    if (t3 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 7256);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

}

static void work_a_3663596471_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    unsigned char t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 >= 20);
    if (t4 != 0)
        goto LAB3;

LAB4:    t11 = (t0 + 2632U);
    t12 = *((char **)t11);
    t13 = *((int *)t12);
    t14 = (t13 >= 10);
    if (t14 != 0)
        goto LAB5;

LAB6:
LAB7:    t21 = (t0 + 11364);
    t23 = (t0 + 7448);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t21, 4U);
    xsi_driver_first_trans_fast(t23);

LAB2:    t28 = (t0 + 7064);
    *((int *)t28) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 11356);
    t6 = (t0 + 7448);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB5:    t11 = (t0 + 11360);
    t16 = (t0 + 7448);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 4U);
    xsi_driver_first_trans_fast(t16);
    goto LAB2;

LAB8:    goto LAB2;

}

static void work_a_3663596471_3212880686_p_2(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    int t6;
    int t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = (t0 + 3112U);
    t5 = *((char **)t2);
    t2 = (t0 + 11288U);
    t6 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t5, t2);
    t7 = (t6 * 10);
    t8 = (t4 - t7);
    t9 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t1, t8, 4);
    t10 = (t0 + 7512);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 4U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 7080);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3663596471_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    unsigned char t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    int t33;
    unsigned char t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    int t43;
    unsigned char t44;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 >= 50);
    if (t4 != 0)
        goto LAB3;

LAB4:    t11 = (t0 + 2792U);
    t12 = *((char **)t11);
    t13 = *((int *)t12);
    t14 = (t13 >= 40);
    if (t14 != 0)
        goto LAB5;

LAB6:    t21 = (t0 + 2792U);
    t22 = *((char **)t21);
    t23 = *((int *)t22);
    t24 = (t23 >= 30);
    if (t24 != 0)
        goto LAB7;

LAB8:    t31 = (t0 + 2792U);
    t32 = *((char **)t31);
    t33 = *((int *)t32);
    t34 = (t33 >= 20);
    if (t34 != 0)
        goto LAB9;

LAB10:    t41 = (t0 + 2792U);
    t42 = *((char **)t41);
    t43 = *((int *)t42);
    t44 = (t43 >= 10);
    if (t44 != 0)
        goto LAB11;

LAB12:
LAB13:    t51 = (t0 + 11388);
    t53 = (t0 + 7576);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    memcpy(t57, t51, 4U);
    xsi_driver_first_trans_fast(t53);

LAB2:    t58 = (t0 + 7096);
    *((int *)t58) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 11368);
    t6 = (t0 + 7576);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB5:    t11 = (t0 + 11372);
    t16 = (t0 + 7576);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 4U);
    xsi_driver_first_trans_fast(t16);
    goto LAB2;

LAB7:    t21 = (t0 + 11376);
    t26 = (t0 + 7576);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t21, 4U);
    xsi_driver_first_trans_fast(t26);
    goto LAB2;

LAB9:    t31 = (t0 + 11380);
    t36 = (t0 + 7576);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t31, 4U);
    xsi_driver_first_trans_fast(t36);
    goto LAB2;

LAB11:    t41 = (t0 + 11384);
    t46 = (t0 + 7576);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    memcpy(t50, t41, 4U);
    xsi_driver_first_trans_fast(t46);
    goto LAB2;

LAB14:    goto LAB2;

}

static void work_a_3663596471_3212880686_p_4(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    int t6;
    int t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = (t0 + 3432U);
    t5 = *((char **)t2);
    t2 = (t0 + 11288U);
    t6 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t5, t2);
    t7 = (t6 * 10);
    t8 = (t4 - t7);
    t9 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t1, t8, 4);
    t10 = (t0 + 7640);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 4U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 7112);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3663596471_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(66, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 7704);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7128);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3663596471_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 7768);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7144);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3663596471_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 7832);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7160);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3663596471_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 7896);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7176);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3663596471_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3663596471_3212880686_p_0,(void *)work_a_3663596471_3212880686_p_1,(void *)work_a_3663596471_3212880686_p_2,(void *)work_a_3663596471_3212880686_p_3,(void *)work_a_3663596471_3212880686_p_4,(void *)work_a_3663596471_3212880686_p_5,(void *)work_a_3663596471_3212880686_p_6,(void *)work_a_3663596471_3212880686_p_7,(void *)work_a_3663596471_3212880686_p_8};
	xsi_register_didat("work_a_3663596471_3212880686", "isim/data_flow_n2_TB_isim_beh.exe.sim/work/a_3663596471_3212880686.didat");
	xsi_register_executes(pe);
}
