# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[(-1)*k1*(k2*x1*x3 - k3*x2)/k1, (1*k1*(k2*x1*x3 - k3*x2) + (-1)*k1*(k4*x2*x4 - k5*x5))/k1, (-1)*k1*(k2*x1*x3 - k3*x2)/k1, (-1)*k1*(k4*x2*x4 - k5*x5)/k1, 1*k1*(k4*x2*x4 - k5*x5)/k1 ]
constraints=[ 1*k1*x1 + 1*k1*x2 + 1*k1*x5 - k1*k6, 1*k1*x2 + 1*k1*x3 + 1*k1*x5 - k1*k7, 1*k1*x4 + 1*k1*x5 - k1*k8 ]
ID="BIOMD0000000629"
pol=true
mass_bool=true
rev=2
irr=0
def=0
rat=true
desc="Haffez2017 - RAR interaction with synthetic analogues"
stoichMatrix=[ [ -1, 0], [ 1,-1], [ -1, 0], [ 0,-1], [ 0, 1 ] ]
reconStoichMatrix=[ [ -1, 1, 0, 0], [ 1,-1,-1, 1], [ -1, 1, 0, 0], [ 0, 0,-1, 1], [ 0, 0, 1,-1 ] ]
kineticMatrix=[ [ 1,0,0,0], [ 0,1,1,0], [ 1,0,0,0], [ 0,0,1,0], [ 0,0,0,1 ] ]
paramValues=[ 1,3//5,1//10,7//500,1//5,1//2000,7//2000,30 ]
paramNames=[ "RAR_retinoids","__lp_r2_k1","__lp_r2_k2","__lp_r3_k1","__lp_r3_k2","__cm_k6","__cm_k7","__cm_k8" ]
speciesNames=[ "L","LR","R","CA","LRCA" ]
