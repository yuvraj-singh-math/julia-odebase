# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9","x10"])
chemSystem=[((-2)*k15*(1//2*k2*x1^2 - k1*x2) + (-1)*k15*(k7*x1*x3 - k5*x5))/k15, 1*k15*(1//2*k2*x1^2 - k1*x2)/k15, ((-2)*k15*(1//2*k4*x3^2 - k3*x4) + (-1)*k15*(k7*x1*x3 - k5*x5))/k15, (1*k15*(1//2*k4*x3^2 - k3*x4) + (-1)*k15*k11*x4*x8 + 1*k15*k14*x10)/k15, (1*k15*(k7*x1*x3 - k5*x5) + (-1)*k15*k10*x5*x8 + 1*k15*k13*x9)/k15, (-2)*k15*(1//2*k8*x6^2 - k6*x7)/k15, (1*k15*(1//2*k8*x6^2 - k6*x7) + (-1)*k15*(k9*x7 - k12*x8))/k15, 1*k15*(k9*x7 - k12*x8)/k15, (1*k15*k10*x5*x8 + (-1)*k15*k13*x9)/k15, (1*k15*k11*x4*x8 + (-1)*k15*k14*x10)/k15 ]
constraints=[ 1*k15*x1 + 2*k15*x2 + 1*k15*x5 + 1*k15*x9 - k15*k16, 1*k15*x3 + 2*k15*x4 + 1*k15*x5 + 1*k15*x9 + 2*k15*x10 - k15*k17, 1*k15*x6 + 2*k15*x7 + 2*k15*x8 - k15*k18 ]
ID="BIOMD0000000827"
pol=true
mass_bool=false
rev=1
irr=8
def=2
rat=true
desc="Ito2019 - gefitnib resistance of lung adenocarcinoma caused by MET amplification"
stoichMatrix=[ [ -2, 0,-1, 0, 0, 0, 0, 0, 0], [ 1, 0, 0, 0, 0, 0, 0, 0, 0], [ 0,-2,-1, 0, 0, 0, 0, 0, 0], [ 0, 1, 0, 0, 0, 0,-1, 0, 1], [ 0, 0, 1, 0, 0,-1, 0, 1, 0], [ 0, 0, 0,-2, 0, 0, 0, 0, 0], [ 0, 0, 0, 1,-1, 0, 0, 0, 0], [ 0, 0, 0, 0, 1, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 1, 0,-1, 0], [ 0, 0, 0, 0, 0, 0, 1, 0,-1 ] ]
reconStoichMatrix=[ [ -2, 2, 0,-1, 0, 0, 0, 0, 0, 0], [ 1,-1, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0,-2,-1, 0, 0, 0, 0, 0, 0], [ 0, 0, 1, 0, 0, 0, 0,-1, 0, 1], [ 0, 0, 0, 1, 0, 0,-1, 0, 1, 0], [ 0, 0, 0, 0,-2, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 1,-1, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 1, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 1, 0,-1, 0], [ 0, 0, 0, 0, 0, 0, 0, 1, 0,-1 ] ]
kineticMatrix=[ [ 2,0,0,1,0,0,0,0,0,0], [ 0,1,0,0,0,0,0,0,0,0], [ 0,0,2,1,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,1,0,0,0], [ 0,0,0,0,2,0,0,0,0,0], [ 0,0,0,0,0,1,0,0,0,0], [ 0,0,0,0,0,0,1,1,0,0], [ 0,0,0,0,0,0,0,0,1,0], [ 0,0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 31//25,23000000000,27//25,1900000000000,1,1,240000000000,2600000000000,9//200,10000000000,10000000000,7//250,7//250,7//250,1,9//2500000000000,11//200000000000000,37//5000000000000 ]
paramNames=[ "l_1","k_1","l_2","k_2","l_3","l_4","k_3","k_4","k_p1","k_p2","k_p3","l_p1","l_p2","l_p3","compartment","__cm_k16","__cm_k17","__cm_k18" ]
speciesNames=[ "X_1_EGFR","X_4_EGFR_EGFR","X_2_ErbB3","X_6_ErbB3_ErbB3","X_5_EGFR_ErbB3","X_3_MET","X_7_MET_MET","X_10_p_MET_MET","X_8_p_EGFR_ErbB3","X_9_p_ErbB3_ErbB3" ]
