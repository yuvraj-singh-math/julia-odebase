# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24,k25,k26,k27,k28,k29,k30,k31)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20","k21","k22","k23","k24","k25","k26","k27","k28","k29","k30","k31"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9","x10","x11","x12","x13","x14","x15","x16","x17","x18","x19","x20","x21","x22"])
chemSystem=[((-1)*k5*k9*x1*k24 + 1*k5*k17*x8*x10)/k5, (2*k5*k9*x1*k24 + (-1)*k5*k10*x2*x10)/k5, (1*k5*k10*x2*x10 + (-2)*k5*(k11*x3^2 - k12*x4*x14) + (-1)*k5*k14*x6*x3 + (-1)*k5*k16*x5*x3 + (-1)*k21*x3*x19)/k5, (1*k5*(k11*x3^2 - k12*x4*x14) + (-1)*k5*k13*x4 + (-1)*k5*k19*x10*x4 + 1*k5*k20*x9*x14)/k5, (1*k5*k13*x4 + 1*k5*k15*x7 + (-1)*k5*k16*x5*x3)/k5, (1*k5*k13*x4 + (-1)*k5*k14*x6*x3)/k5, (1*k5*k14*x6*x3 + (-1)*k5*k15*x7)/k5, (1*k5*k15*x7 + 1*k5*k16*x5*x3 + (-1)*k5*k17*x8*x10)/k5, (1*k5*k19*x10*x4 + (-1)*k5*k20*x9*x14)/k5, ((-1)*k5*k10*x2*x10 + (-1)*k5*k17*x8*x10 + 1*k5*k18*x11*x14 + (-1)*k5*k19*x10*x4)/k5, (1*k5*k10*x2*x10 + 1*k5*k17*x8*x10 + (-1)*k5*k18*x11*x14 + 1*k5*k19*x10*x4)/k5, ((-1)*129//5000*x17*x12 + 1*k23*x13*x19)/k5, (1*129//5000*x17*x12 + (-1)*k23*x13*x19)/k5, (1*k5*k10*x2*x10 + 1*k5*(k11*x3^2 - k12*x4*x14) + 1*k5*k14*x6*x3 + (-1)*k5*k18*x11*x14 + 2*k5*k19*x10*x4 + (-1)*k5*k20*x9*x14 + 1*k21*x3*x19)/k5, 0, (1*k21*x3*x19 + (-2)*k6*k22*x16^2)/k6, (1*k6*k22*x16^2 + (-2)*129//5000*x17*x12)/k6, (1*129//5000*x17*x12 + (-1)*k1*x18 + (-1)*(k2*x18 - k2*x20) + (-1)*(k3*x18 - k3*k25))/k6, ((-1)*k21*x3*x19 + 1*k6*k22*x16^2 + 3*129//5000*x17*x12 + (-1)*k23*x13*x19)/k6, 1*(k2*x18 - k2*x20)/k7, 0, 0 ]
constraints=[ 1728*k5*x1 + 864*k5*x2 + 864*k5*x3 + 864*k5*x4 + 864*k5*x6 + 864*k5*x7 + 864*k5*x8 + 864*k5*x10 + 864*k5*x14 - k5*k27, 1*k5*x10 + 1*k5*x11 - k5*k28, 1*k5*x12 + 1*k5*x13 - k5*k29, 1*k5*x12 + 1*k6*x16 + 1*k6*x17 + 1*k6*x19 - k5*k30 + k6*k31 ]
ID="BIOMD0000000389"
pol=true
mass_bool=false
rev=3
irr=15
def=1
rat=true
desc="Arnold2011_Hahn1986_CalvinCycle_Starch_Sucrose"
stoichMatrix=[ [ -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 2,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 1,-2, 0,-1, 0,-1, 0, 0, 0, 0,-1, 0, 0, 0, 0, 0, 0], [ 0, 0, 1,-1, 0, 0, 0, 0, 0,-1, 1, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 1, 0, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 1, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-1, 0, 0, 0, 0, 0, 0, 0], [ 0,-1, 0, 0, 0, 0, 0,-1, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 1, 0, 0, 0, 0, 0, 1,-1, 1, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,-1, 1, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-1, 0, 0, 0], [ 0, 1, 1, 0, 1, 0, 0, 0,-1, 2,-1, 1, 0, 0, 0, 0, 0, 0], [ -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,-1,-1,-1], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,-1, 1, 3,-1, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0 ] ]
reconStoichMatrix=[ [ -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 2,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 1,-2, 2, 0,-1, 0,-1, 0, 0, 0, 0,-1, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 1,-1,-1, 0, 0, 0, 0, 0,-1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 1, 0, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 1, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0,-1, 0, 0, 0, 0, 0, 0,-1, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 1, 0, 0, 0, 0, 0, 0, 1,-1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,-1, 1, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-1, 0, 0, 0, 0, 0], [ 0, 1, 1,-1, 0, 1, 0, 0, 0,-1, 2,-1, 1, 0, 0, 0, 0, 0, 0, 0, 0], [ -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,-1,-1, 1,-1, 1], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,-1, 1, 3,-1, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-1, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-1], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,2,0,0,1,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0], [ 0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0], [ 0,1,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0], [ 0,0,0,1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0], [ 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ] ]
paramValues=[ 3//100000,1//10000,1//10000,499359//50000000,1,1,1,1,3//500,207//10000,4,0,31//1000,31//10,31//100,31//5,31//1000,279//1000,1//500,1//25000,1//2,31//20,151//20000,31,1//2,1,75924//5,881//200,1371//250,3871//1000,507//500 ]
paramNames=[ "r","D","phi","v_15","chloroplast","cytosol","vacuole","phloem","__lp_r2_k1","__lp_r3_k1","__lp_r4_k1","__lp_r4_k2","__lp_r5_k1","__lp_r6_k1","__lp_r7_k1","__lp_r8_k1","__lp_r9_k1","__lp_r10_k1","__lp_r11_k1","__lp_r12_k1","__lp_r13_k1","__lp_r14_k1","__lp_r16_k1","CO2","E","Resp","__cm_k27","__cm_k28","__cm_k29","__cm_k30","__cm_k31" ]
speciesNames=[ "RuBP","PGA","TP","HeP","TPGA","E4P","S7P","Ru5P","GG","ATP","ADP","UTP","UDP","Pi","CO2","TPc","HePc","Suc","Pic","SucV","E","Resp" ]
