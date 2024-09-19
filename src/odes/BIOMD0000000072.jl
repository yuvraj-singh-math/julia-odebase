# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3,x4,x5,x6,x7)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7"])
chemSystem=[(-1)*k1*(k2*x1*x2 - k3*x7)/k1, ((-1)*k1*(k2*x1*x2 - k3*x7) + 1*k1*k4 + (-1)*k1*k5*x2)/k1, (1*k1*k6*x5*x4 + (-1)*k1*k7*x7*x3)/k1, ((-1)*k1*k6*x5*x4 + 1*k1*k7*x7*x3)/k1, ((-1)*k1*k6*x5*x4 + 1*k1*k9*x6)/k1, (1*k1*k7*x7*x3 + (-1)*k1*k9*x6)/k1, (1*k1*(k2*x1*x2 - k3*x7) + (-1)*k1*k8*x7)/k1 ]
constraints=[ 1*k1*x3 + 1*k1*x4 - k1*k10, 1*k1*x3 + 1*k1*x5 + 1*k1*x6 - k1*k11 ]
ID="BIOMD0000000072"
pol=true
mass_bool=false
rev=1
irr=6
def=1
rat=true
desc="Yi2003_GproteinCycle"
stoichMatrix=[ [ -1,0, 0, 0, 0, 0, 0], [ -1,1,-1, 0, 0, 0, 0], [ 0,0, 0, 1,-1, 0, 0], [ 0,0, 0,-1, 1, 0, 0], [ 0,0, 0,-1, 0, 0, 1], [ 0,0, 0, 0, 1, 0,-1], [ 1,0, 0, 0, 0,-1, 0 ] ]
reconStoichMatrix=[ [ -1, 1,0, 0, 0, 0, 0, 0], [ -1, 1,1,-1, 0, 0, 0, 0], [ 0, 0,0, 0, 1,-1, 0, 0], [ 0, 0,0, 0,-1, 1, 0, 0], [ 0, 0,0, 0,-1, 0, 0, 1], [ 0, 0,0, 0, 0, 1, 0,-1], [ 1,-1,0, 0, 0, 0,-1, 0 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0,0,0], [ 1,0,0,1,0,0,0,0], [ 0,0,0,0,0,1,0,0], [ 0,0,0,0,1,0,0,0], [ 0,0,0,0,1,0,0,0], [ 0,0,0,0,0,0,0,1], [ 0,1,0,0,0,0,1,0 ] ]
paramValues=[ 1,83//25000000000000000000,1//100,4,1//2500,1,1//100000,1//250,11//100,10000,10000 ]
paramNames=[ "cell","__lp_r2_k1","__lp_r2_k2","__lp_r3_v","__lp_r4_k1","__lp_r5_k1","__lp_r6_k1","__lp_r7_k1","__lp_r8_k1","__cm_k10","__cm_k11" ]
speciesNames=[ "L","R","G","Gbg","Gd","Ga","RL" ]
