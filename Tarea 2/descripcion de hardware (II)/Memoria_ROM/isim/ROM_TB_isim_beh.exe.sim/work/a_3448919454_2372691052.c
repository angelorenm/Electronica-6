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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Angel/PracticasE6/Tarea2/descripcion de hardware (II)/Memoria_ROM/ROM_TB.vhd";



static void work_a_3448919454_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 2152);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(151, ng0);
    t2 = (t0 + 948U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1676);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(152, ng0);
    t2 = (t0 + 2152);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(153, ng0);
    t2 = (t0 + 948U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1676);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3448919454_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    int t10;
    int t11;
    int t12;
    int t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 1920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(161, ng0);
    t2 = (t0 + 6696);
    t4 = (t0 + 2188);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(162, ng0);
    t9 = (2.5000000000000000 * 1000LL);
    t2 = (t0 + 1820);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(164, ng0);
    t2 = (t0 + 1152U);
    t3 = *((char **)t2);
    t10 = *((int *)t3);
    t11 = (t10 - 1);
    t2 = (t0 + 6704);
    *((int *)t2) = 0;
    t4 = (t0 + 6708);
    *((int *)t4) = t11;
    t12 = 0;
    t13 = t11;

LAB8:    if (t12 <= t13)
        goto LAB9;

LAB11:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(165, ng0);
    t5 = (t0 + 1220U);
    t6 = *((char **)t5);
    t5 = (t0 + 6704);
    t14 = *((int *)t5);
    t15 = (t14 - 255);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, *((int *)t5));
    t17 = (8U * t16);
    t18 = (0 + t17);
    t7 = (t6 + t18);
    t8 = (t0 + 2188);
    t19 = (t8 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(166, ng0);
    t2 = (t0 + 948U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t2 = (t0 + 1820);
    xsi_process_wait(t2, t9);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 6704);
    t12 = *((int *)t2);
    t3 = (t0 + 6708);
    t13 = *((int *)t3);
    if (t12 == t13)
        goto LAB11;

LAB16:    t10 = (t12 + 1);
    t12 = t10;
    t4 = (t0 + 6704);
    *((int *)t4) = t12;
    goto LAB8;

LAB12:    goto LAB10;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_3448919454_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3448919454_2372691052_p_0,(void *)work_a_3448919454_2372691052_p_1};
	xsi_register_didat("work_a_3448919454_2372691052", "isim/ROM_TB_isim_beh.exe.sim/work/a_3448919454_2372691052.didat");
	xsi_register_executes(pe);
}
