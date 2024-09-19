# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[((-1)*x1*k8*k3*k2 + (-1)*x1*x4*k4*k2 + 1*x3*k7*k2)/k2, 0, (1*k8*x4*k5*k2 + (-1)*x3*k7*k2)/k2, (1*x1*k8*k3*k2 + (-1)*x1*x4*k4*k2 + 1*k8*x4*k5*k2 + (-2)*x4^2*k6*k2)/k2, 0 ]
constraints=[ ]
ID="BIOMD0000000040"
pol=true
mass_bool=true
rev=0
irr=5
def=1
rat=true
desc="Field1974_Oregonator"
stoichMatrix=[ [ -1,-1, 0, 0, 1], [ -1, 0,-1, 1, 0], [ 0, 0, 1, 0,-1], [ 1,-1, 1,-2, 0], [ 1, 2, 0, 1, 0 ] ]
reconStoichMatrix=[ [ -1,-1, 0, 0, 1], [ -1, 0,-1, 1, 0], [ 0, 0, 1, 0,-1], [ 1,-1, 1,-2, 0], [ 1, 2, 0, 1, 0 ] ]
kineticMatrix=[ [ 1,1,0,0,0], [ 1,0,1,0,0], [ 0,0,0,0,1], [ 0,1,1,2,0], [ 0,0,0,0,0 ] ]
paramValues=[ 1,1,67//50,1600000000,8000,40000000,1,3//50,0 ]
paramNames=[ "f","BZ","__lp_r2_k1","__lp_r3_k2","__lp_r4_k3","__lp_r5_k4","__lp_r6_k5","BrO3","HOBr" ]
speciesNames=[ "Br","BrO3","Ce","HBrO2","HOBr" ]
