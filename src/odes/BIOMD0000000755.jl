# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9"])
chemSystem=[(-1)*k1*k2*x1*x2/k1, (-1)*k1*k2*x1*x2/k1, (1*k1*k2*x1*x2 + (-1)*k1*k4*x3*x4 + 1*k1*k5*x6)/k1, ((-1)*k1*k3*x1*x2*x4 + (-1)*k1*k4*x3*x4)/k1, (1*k1*k3*x1*x2*x4 + 1*k1*k6*x3*x7 + (-1)*k1*k8*x5)/k1, (1*k1*k4*x3*x4 + (-1)*k1*k5*x6)/k1, (1*k1*k5*x6 + (-1)*k1*k6*x3*x7 + (-1)*k1*k7*x7)/k1, 1*k1*k7*x7/k1, 1*k1*k8*x5/k1 ]
constraints=[ 1*k1*x1 + 1*k1*x3 + 1*k1*x6 - k1*k9, 1*k1*x2 + 1*k1*x3 + 1*k1*x6 - k1*k10, 1*k1*x4 + 1*k1*x5 + 1*k1*x6 + 1*k1*x7 + 1*k1*x8 + 1*k1*x9 - k1*k11 ]
ID="BIOMD0000000755"
pol=true
mass_bool=true
rev=0
irr=7
def=1
rat=true
desc="Hansen2019 - Nine species reduced model of blood coagulation"
stoichMatrix=[ [ -1, 0, 0, 0, 0, 0, 0], [ -1, 0, 0, 0, 0, 0, 0], [ 1, 0,-1, 1, 0, 0, 0], [ 0,-1,-1, 0, 0, 0, 0], [ 0, 1, 0, 0, 1, 0,-1], [ 0, 0, 1,-1, 0, 0, 0], [ 0, 0, 0, 1,-1,-1, 0], [ 0, 0, 0, 0, 0, 1, 0], [ 0, 0, 0, 0, 0, 0, 1 ] ]
reconStoichMatrix=[ [ -1, 0, 0, 0, 0, 0, 0], [ -1, 0, 0, 0, 0, 0, 0], [ 1, 0,-1, 1, 0, 0, 0], [ 0,-1,-1, 0, 0, 0, 0], [ 0, 1, 0, 0, 1, 0,-1], [ 0, 0, 1,-1, 0, 0, 0], [ 0, 0, 0, 1,-1,-1, 0], [ 0, 0, 0, 0, 0, 1, 0], [ 0, 0, 0, 0, 0, 0, 1 ] ]
kineticMatrix=[ [ 1,1,0,0,0,0,0], [ 1,1,0,0,0,0,0], [ 0,0,1,0,1,0,0], [ 0,1,1,0,0,0,0], [ 0,0,0,0,0,0,1], [ 0,0,0,1,0,0,0], [ 0,0,0,0,1,1,0], [ 0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0 ] ]
paramValues=[ 1,121267//1000,94929//200000000000000000000,2569840000000,387701//5,69679400000,472749//100000000,201671//10000000,1//1000000000,1//6250000,7//5000000 ]
paramNames=[ "compartment","__lp_r2_k1","__lp_r3_k1","__lp_r4_k1","__lp_r5_k1","__lp_r6_k1","__lp_r7_k1","__lp_r8_k1","__cm_k9","__cm_k10","__cm_k11" ]
speciesNames=[ "TF","X","Xa_Va","II","IIa","Xa_Va_II","mIIa","mIIa_ATIII","IIa_ATIII" ]
