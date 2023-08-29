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
static const char *ng0 = "/home/grzegorz/git/ADS8681_Test/Software/FPGA/ADS8681_Test/verilog/src/stm32h7_pssi_8bus_32bits.v";
static int ng1[] = {0, 0};
static int ng2[] = {31, 0};
static int ng3[] = {24, 0};
static int ng4[] = {1, 0};
static int ng5[] = {23, 0};
static int ng6[] = {16, 0};
static int ng7[] = {2, 0};
static int ng8[] = {15, 0};
static int ng9[] = {8, 0};
static int ng10[] = {3, 0};
static int ng11[] = {7, 0};
static int ng12[] = {4, 0};



static void Always_39_0(char *t0)
{
    char t13[8];
    char t22[8];
    char t33[8];
    char t34[8];
    char t35[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    int t43;
    char *t44;
    unsigned int t45;
    int t46;
    int t47;
    char *t48;
    unsigned int t49;
    int t50;
    int t51;
    unsigned int t52;
    int t53;
    unsigned int t54;
    unsigned int t55;
    int t56;
    int t57;

LAB0:    t1 = (t0 + 3320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3640);
    *((int *)t2) = 1;
    t3 = (t0 + 3352);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t2) == 0)
        goto LAB9;

LAB11:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;

LAB12:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB6:    xsi_set_current_line(40, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    goto LAB8;

LAB9:    *((unsigned int *)t13) = 1;
    goto LAB12;

LAB13:    xsi_set_current_line(41, ng0);

LAB16:    xsi_set_current_line(42, ng0);
    t11 = (t0 + 2248);
    t12 = (t11 + 56U);
    t19 = *((char **)t12);

LAB17:    t20 = ((char*)((ng1)));
    t21 = xsi_vlog_unsigned_case_compare(t19, 4, t20, 32);
    if (t21 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng4)));
    t21 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 32);
    if (t21 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng7)));
    t21 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 32);
    if (t21 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng10)));
    t21 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 32);
    if (t21 == 1)
        goto LAB24;

LAB25:
LAB26:    goto LAB15;

LAB18:    xsi_set_current_line(43, ng0);

LAB27:    xsi_set_current_line(44, ng0);
    t23 = (t0 + 1368U);
    t24 = *((char **)t23);
    memset(t22, 0, 8);
    t23 = (t22 + 4);
    t25 = (t24 + 4);
    t26 = *((unsigned int *)t24);
    t27 = (t26 >> 0);
    *((unsigned int *)t22) = t27;
    t28 = *((unsigned int *)t25);
    t29 = (t28 >> 0);
    *((unsigned int *)t23) = t29;
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 & 255U);
    t31 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t31 & 255U);
    t32 = (t0 + 1928);
    t36 = (t0 + 1928);
    t37 = (t36 + 72U);
    t38 = *((char **)t37);
    t39 = ((char*)((ng2)));
    t40 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t33, t34, t35, ((int*)(t38)), 2, t39, 32, 1, t40, 32, 1);
    t41 = (t33 + 4);
    t42 = *((unsigned int *)t41);
    t43 = (!(t42));
    t44 = (t34 + 4);
    t45 = *((unsigned int *)t44);
    t46 = (!(t45));
    t47 = (t43 && t46);
    t48 = (t35 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (!(t49));
    t51 = (t47 && t50);
    if (t51 == 1)
        goto LAB28;

LAB29:    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB26;

LAB20:    xsi_set_current_line(47, ng0);

LAB30:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t3 = (t13 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t11 = (t0 + 1928);
    t12 = (t0 + 1928);
    t20 = (t12 + 72U);
    t23 = *((char **)t20);
    t24 = ((char*)((ng5)));
    t25 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t22, t33, t34, ((int*)(t23)), 2, t24, 32, 1, t25, 32, 1);
    t32 = (t22 + 4);
    t15 = *((unsigned int *)t32);
    t43 = (!(t15));
    t36 = (t33 + 4);
    t16 = *((unsigned int *)t36);
    t46 = (!(t16));
    t47 = (t43 && t46);
    t37 = (t34 + 4);
    t17 = *((unsigned int *)t37);
    t50 = (!(t17));
    t51 = (t47 && t50);
    if (t51 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB26;

LAB22:    xsi_set_current_line(51, ng0);

LAB33:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t3 = (t13 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t11 = (t0 + 1928);
    t12 = (t0 + 1928);
    t20 = (t12 + 72U);
    t23 = *((char **)t20);
    t24 = ((char*)((ng8)));
    t25 = ((char*)((ng9)));
    xsi_vlog_convert_partindices(t22, t33, t34, ((int*)(t23)), 2, t24, 32, 1, t25, 32, 1);
    t32 = (t22 + 4);
    t15 = *((unsigned int *)t32);
    t43 = (!(t15));
    t36 = (t33 + 4);
    t16 = *((unsigned int *)t36);
    t46 = (!(t16));
    t47 = (t43 && t46);
    t37 = (t34 + 4);
    t17 = *((unsigned int *)t37);
    t50 = (!(t17));
    t51 = (t47 && t50);
    if (t51 == 1)
        goto LAB34;

LAB35:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB26;

LAB24:    xsi_set_current_line(55, ng0);

LAB36:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t3 = (t13 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t11 = (t0 + 1928);
    t12 = (t0 + 1928);
    t20 = (t12 + 72U);
    t23 = *((char **)t20);
    t24 = ((char*)((ng11)));
    t25 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t22, t33, t34, ((int*)(t23)), 2, t24, 32, 1, t25, 32, 1);
    t32 = (t22 + 4);
    t15 = *((unsigned int *)t32);
    t43 = (!(t15));
    t36 = (t33 + 4);
    t16 = *((unsigned int *)t36);
    t46 = (!(t16));
    t47 = (t43 && t46);
    t37 = (t34 + 4);
    t17 = *((unsigned int *)t37);
    t50 = (!(t17));
    t51 = (t47 && t50);
    if (t51 == 1)
        goto LAB37;

LAB38:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB26;

LAB28:    t52 = *((unsigned int *)t35);
    t53 = (t52 + 0);
    t54 = *((unsigned int *)t33);
    t55 = *((unsigned int *)t34);
    t56 = (t54 - t55);
    t57 = (t56 + 1);
    xsi_vlogvar_wait_assign_value(t32, t22, t53, *((unsigned int *)t34), t57, 0LL);
    goto LAB29;

LAB31:    t18 = *((unsigned int *)t34);
    t53 = (t18 + 0);
    t26 = *((unsigned int *)t22);
    t27 = *((unsigned int *)t33);
    t56 = (t26 - t27);
    t57 = (t56 + 1);
    xsi_vlogvar_wait_assign_value(t11, t13, t53, *((unsigned int *)t33), t57, 0LL);
    goto LAB32;

LAB34:    t18 = *((unsigned int *)t34);
    t53 = (t18 + 0);
    t26 = *((unsigned int *)t22);
    t27 = *((unsigned int *)t33);
    t56 = (t26 - t27);
    t57 = (t56 + 1);
    xsi_vlogvar_wait_assign_value(t11, t13, t53, *((unsigned int *)t33), t57, 0LL);
    goto LAB35;

LAB37:    t18 = *((unsigned int *)t34);
    t53 = (t18 + 0);
    t26 = *((unsigned int *)t22);
    t27 = *((unsigned int *)t33);
    t56 = (t26 - t27);
    t57 = (t56 + 1);
    xsi_vlogvar_wait_assign_value(t11, t13, t53, *((unsigned int *)t33), t57, 0LL);
    goto LAB38;

}


extern void work_m_09493454219717168343_2445469626_init()
{
	static char *pe[] = {(void *)Always_39_0};
	xsi_register_didat("work_m_09493454219717168343_2445469626", "isim/stm32h7_pssi_8bus_32bits_isim_beh.exe.sim/work/m_09493454219717168343_2445469626.didat");
	xsi_register_executes(pe);
}
