# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8"])
chemSystem=[((-1)*k1*(k2*x2*x1 - k3*x3) + 1*k1*(k5*x4 - k6*x5*x1) + (-1)*k1*(k9*x1*x7 - k10*x8))/k1, (-1)*k1*(k2*x2*x1 - k3*x3)/k1, (1*k1*(k2*x2*x1 - k3*x3) + (-1)*k1*k4*x3)/k1, (1*k1*k4*x3 + (-1)*k1*(k5*x4 - k6*x5*x1))/k1, (1*k1*(k5*x4 - k6*x5*x1) + (-1)*k1*(k7*x5*x6 - k8*x7))/k1, (-1)*k1*(k7*x5*x6 - k8*x7)/k1, (1*k1*(k7*x5*x6 - k8*x7) + (-1)*k1*(k9*x1*x7 - k10*x8))/k1, 1*k1*(k9*x1*x7 - k10*x8)/k1 ]
constraints=[ 1*k1*x1 + 1*k1*x3 + 1*k1*x4 + 1*k1*x8 - k1*k11, 1*k1*x2 + 1*k1*x3 + 1*k1*x4 + 1*k1*x5 + 1*k1*x7 + 1*k1*x8 - k1*k12, 1*k1*x6 + 1*k1*x7 + 1*k1*x8 - k1*k13 ]
ID="BIOMD0000000361"
pol=true
mass_bool=true
rev=4
irr=1
def=0
rat=true
desc="Panteleev2002_TFPImechanism_schmema1"
stoichMatrix=[ [ -1, 0, 1, 0,-1], [ -1, 0, 0, 0, 0], [ 1,-1, 0, 0, 0], [ 0, 1,-1, 0, 0], [ 0, 0, 1,-1, 0], [ 0, 0, 0,-1, 0], [ 0, 0, 0, 1,-1], [ 0, 0, 0, 0, 1 ] ]
reconStoichMatrix=[ [ -1, 1, 0, 1,-1, 0, 0,-1, 1], [ -1, 1, 0, 0, 0, 0, 0, 0, 0], [ 1,-1,-1, 0, 0, 0, 0, 0, 0], [ 0, 0, 1,-1, 1, 0, 0, 0, 0], [ 0, 0, 0, 1,-1,-1, 1, 0, 0], [ 0, 0, 0, 0, 0,-1, 1, 0, 0], [ 0, 0, 0, 0, 0, 1,-1,-1, 1], [ 0, 0, 0, 0, 0, 0, 0, 1,-1 ] ]
kineticMatrix=[ [ 1,0,0,0,1,0,0,1,0], [ 1,0,0,0,0,0,0,0,0], [ 0,1,1,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0,0], [ 0,0,0,0,1,1,0,0,0], [ 0,0,0,0,0,1,0,0,0], [ 0,0,0,0,0,0,1,1,0], [ 0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 1,5,770,420,770,5,27//500,1//50,11//25,33//500,9999997//10000000,1699999//10000,2399999//1000000 ]
paramNames=[ "compartment","__lp_r2_k1","__lp_r2_k2","__lp_r3_k1","__lp_r4_k1","__lp_r4_k2","__lp_r5_k1","__lp_r5_k2","__lp_r6_k1","__lp_r6_k2","__cm_k11","__cm_k12","__cm_k13" ]
speciesNames=[ "VIIa_TF","X","VIIa_TF_X","VIIa_TF_Xa","Xa","TFPI","Xa_TFPI","Xa_TFPI_VIIa_TF" ]
