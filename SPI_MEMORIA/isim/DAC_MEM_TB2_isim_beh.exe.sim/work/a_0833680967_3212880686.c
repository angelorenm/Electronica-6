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
static const char *ng0 = "C:/Users/Angel/PracticasE6/Tarea1/archivos tarea1/SPI_MEMORIA/TOP-SINTHESIS.vhd";



static void work_a_0833680967_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    int t14;
    int t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(4226, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t9 = xsi_signal_has_event(t1);
    if (t9 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2600);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(4227, ng0);
    t1 = (t0 + 2652);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(4229, ng0);
    t2 = (t0 + 1328U);
    t7 = *((char **)t2);
    t14 = *((int *)t7);
    t15 = (t14 + 1);
    t2 = (t0 + 2652);
    t8 = (t2 + 32U);
    t16 = *((char **)t8);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    *((int *)t18) = t15;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB7:    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t3 = t13;
    goto LAB9;

LAB10:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    t4 = t11;
    goto LAB12;

}

static void work_a_0833680967_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(4240, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(4247, ng0);
    t1 = (t0 + 2760);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t12 = *((char **)t6);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 2608);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(4242, ng0);
    t1 = (t0 + 1704U);
    t5 = *((char **)t1);
    t1 = (t0 + 1328U);
    t6 = *((char **)t1);
    t7 = *((int *)t6);
    t8 = (t7 - 4095);
    t9 = (t8 * -1);
    xsi_vhdl_check_range_of_index(4095, 0, -1, t7);
    t10 = (12U * t9);
    t11 = (0 + t10);
    t1 = (t5 + t11);
    t12 = (t0 + 2688);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 12U);
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(4243, ng0);
    t1 = (t0 + 1704U);
    t2 = *((char **)t1);
    t1 = (t0 + 1328U);
    t5 = *((char **)t1);
    t7 = *((int *)t5);
    t8 = (t7 - 4095);
    t9 = (t8 * -1);
    xsi_vhdl_check_range_of_index(4095, 0, -1, t7);
    t10 = (12U * t9);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t6 = (t0 + 2724);
    t12 = (t6 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 12U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(4244, ng0);
    t1 = (t0 + 2760);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t12 = *((char **)t6);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}


extern void work_a_0833680967_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0833680967_3212880686_p_0,(void *)work_a_0833680967_3212880686_p_1};
	xsi_register_didat("work_a_0833680967_3212880686", "isim/DAC_MEM_TB2_isim_beh.exe.sim/work/a_0833680967_3212880686.didat");
	xsi_register_executes(pe);
}
