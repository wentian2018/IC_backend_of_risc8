******************* 1.2V EGL4 ***********************
*****************************************************
.SUBCKT n12ll_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK n12ll_egl4 A=A B=B D=D H=H NF=NF
.ENDS
.SUBCKT n12ll_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************
*****************************************************
.SUBCKT p12ll_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK p12ll_egl4 a=A b=B d=D h=H nf=NF
.ENDS
.SUBCKT p12ll_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************

******************* 1.2V EGL1 ***********************
*****************************************************
.SUBCKT n12ll_egl1_lvs DRN GATE SRC BULK A=1e-6 B=1e-6
X1 DRN GATE SRC BULK n12ll_egl1 a=A b=B
.ENDS
.SUBCKT n12ll_egl1 DRN GATE SRC BULK A=1e-6 B=1e-6
.ENDS
*****************************************************
*****************************************************
.SUBCKT p12ll_egl1_lvs DRN GATE SRC BULK A=1e-6 B=1e-6
X1 DRN GATE SRC BULK p12ll_egl1 a=A b=B
.ENDS
.SUBCKT p12ll_egl1 DRN GATE SRC BULK A=1e-6 B=1e-6
.ENDS
*****************************************************

******************* 2.5V EGL4 ***********************
*****************************************************
.SUBCKT n25ll_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK n25ll_egl4 a=A b=B d=D h=H nf=NF
.ENDS
.SUBCKT n25ll_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************
*****************************************************
.SUBCKT p25ll_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK p25ll_egl4 a=A b=B d=D h=H nf=NF
.ENDS
.SUBCKT p25ll_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************

******************* 2.5V EGL1 ***********************
*****************************************************
.SUBCKT n25ll_egl1_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6
X1 DRN GATE SRC BULK n25ll_egl1 a=A b=B
.ENDS
.SUBCKT n25ll_egl1 DRN GATE SRC BULK A=1e-6 B=1e-6
.ENDS
*****************************************************
*****************************************************
.SUBCKT p25ll_egl1_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6
X1 DRN GATE SRC BULK p25ll_egl1 a=A b=B
.ENDS
.SUBCKT p25ll_egl1 DRN GATE SRC BULK A=1e-6 B=1e-6
.ENDS
*****************************************************

******************* 3.3V EGL4 ***********************
*****************************************************
.SUBCKT nod33ll_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK nod33ll_egl4 a=A b=B d=D h=H nf=NF
.ENDS
.SUBCKT nod33ll_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************
*****************************************************
.SUBCKT pod33ll_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK pod33ll_egl4 a=A b=B d=D h=H nf=NF
.ENDS
.SUBCKT pod33ll_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************

******************* 3.3V EGL1 ***********************
*****************************************************
.SUBCKT nod33ll_egl1_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6
X1 DRN GATE SRC BULK nod33ll_egl1 a=A b=B
.ENDS
.SUBCKT nod33ll_egl1 DRN GATE SRC BULK A=1e-6 B=1e-6
.ENDS
*****************************************************
*****************************************************
.SUBCKT pod33ll_egl1_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6
X1 DRN GATE SRC BULK pod33ll_egl1 a=A b=B
.ENDS
.SUBCKT pod33ll_egl1 DRN GATE SRC BULK A=1e-6 B=1e-6
.ENDS
*****************************************************

******************** MOS_CAP ************************
*****************************************************
.SUBCKT varactorn33_lvs plus minus w=4.41e-6 l=9.5e-6 n=1
m1 minus plus minus minus c3 w=w*nf l=l
.ENDS
*****************************************************

***************** 1.2V SAB EGL4 *********************
*****************************************************
.SUBCKT n12ll_sab_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK n12ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS
.SUBCKT n12ll_sab_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************
*****************************************************
.SUBCKT p12ll_sab_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK p12ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS
.SUBCKT p12ll_sab_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************

***************** 2.5V SAB EGL4 *********************
*****************************************************
.SUBCKT n25ll_sab_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK n25ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS
.SUBCKT n25ll_sab_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************
*****************************************************
.SUBCKT p25ll_sab_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK p25ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS
.SUBCKT p25ll_sab_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************

***************** 3.3V SAB EGL4 *********************
*****************************************************
.SUBCKT nod33ll_sab_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK nod33ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS
.SUBCKT nod33ll_sab_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************
*****************************************************
.SUBCKT pod33ll_sab_egl4_lvs DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 DRN GATE SRC BULK pod33ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS
*****************************************************
.SUBCKT pod33ll_sab_egl4 DRN GATE SRC BULK A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1 W=1e-6 L=1e-6u
.ENDS
*****************************************************


************************ fixed sab devices DCP=1.7 *****************************
*****************************************************
.SUBCKT n12ll_sab_egl4_a30b3p69 d g sb A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 d g sb sb n12ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS

.SUBCKT n12ll_sab_egl4_a30b3p14 d g sb A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 d g sb sb n12ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS

.SUBCKT p12ll_sab_egl4_a30b3p69 d g sb A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 d g sb sb p12ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS
*****************************************************

*****************************************************
.SUBCKT n25ll_sab_egl4_a30b3p69 d g sb A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 d g sb sb n25ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS

.SUBCKT n25ll_sab_egl4_a30b7p33 d g sb A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 d g sb sb n25ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS

.SUBCKT p25ll_sab_egl4_a30b3p69 d g sb A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 d g sb sb p25ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS

.SUBCKT p25ll_sab_egl4_a30b6p472 d g sb A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 d g sb sb p25ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS
*****************************************************

*****************************************************
.SUBCKT nod33ll_sab_egl4_a30b3p69 d g sb A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 d g sb sb nod33ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS

.SUBCKT nod33ll_sab_egl4_a30b7p33 d g sb A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 d g sb sb nod33ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS

.SUBCKT pod33ll_sab_egl4_a30b3p69 d g sb A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 d g sb sb pod33ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS

.SUBCKT pod33ll_sab_egl4_a30b6p472 d g sb A=1e-6 B=1e-6 D=1e-6 H=1e-6 NF=1
X1 d g sb sb pod33ll_sab_egl4 a=A b=B d=D h=H nf=NF
.ENDS
*****************************************************
