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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/nino/Desktop/TsotneLab/470LabFiles/ce475hw6/pcModule.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};



static void Always_13_0(char *t0)
{
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(13, ng0);
    t2 = (t0 + 3736);
    *((int *)t2) = 1;
    t3 = (t0 + 3200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(14, ng0);

LAB5:    xsi_set_current_line(15, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(16, ng0);

LAB12:    xsi_set_current_line(16, ng0);
    t7 = (t0 + 2088);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t0 + 2248);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 8);
    xsi_set_current_line(17, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng2)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 8, t7, 32);
    t8 = (t0 + 2088);
    xsi_vlogvar_assign_value(t8, t11, 0, 0, 8);
    goto LAB11;

LAB9:    xsi_set_current_line(19, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 8);
    goto LAB11;

}

static void Always_23_1(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 3752);
    *((int *)t2) = 1;
    t3 = (t0 + 3448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(24, ng0);

LAB5:    xsi_set_current_line(25, ng0);
    t4 = (t0 + 2248);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 8);
    xsi_set_current_line(26, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 8, t5, 32);
    t6 = (t0 + 1928);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 8);
    goto LAB2;

}


extern void work_m_00000000004286813512_2141282016_init()
{
	static char *pe[] = {(void *)Always_13_0,(void *)Always_23_1};
	xsi_register_didat("work_m_00000000004286813512_2141282016", "isim/pcTest_isim_beh.exe.sim/work/m_00000000004286813512_2141282016.didat");
	xsi_register_executes(pe);
}
