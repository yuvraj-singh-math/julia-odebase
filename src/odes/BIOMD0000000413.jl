# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[((-1)*k2*x1*x2 + 1*k1*x3 + 1*k10 + (-1)*k3*x1)/k11, ((-1)*k2*x1*x2 + 1*k1*x3)/k11, (1*k2*x1*x2 + (-1)*k1*x3 + (-1)*k6*x3*x5 + 1*k4*x4 + 1*k5*x4)/k11, (1*k6*x3*x5 + (-1)*k4*x4 + (-1)*k5*x4)/k11, ((-1)*k6*x3*x5 + 1*k4*x4 + 1*k7 + (-1)*k8*x5)/k11 ]
constraints=[ 1*k11*x2 + 1*k11*x3 + 1*k11*x4 - k11*k12 ]
ID="BIOMD0000000413"
pol=true
mass_bool=true
rev=0
irr=9
def=1
rat=true
desc="Band2012_DII-Venus_FullModel"
stoichMatrix=[ [ -1, 1, 0, 0, 0,1,-1,0, 0], [ -1, 1, 0, 0, 0,0, 0,0, 0], [ 1,-1,-1, 1, 1,0, 0,0, 0], [ 0, 0, 1,-1,-1,0, 0,0, 0], [ 0, 0,-1, 1, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ -1, 1, 0, 0, 0,1,-1,0, 0], [ -1, 1, 0, 0, 0,0, 0,0, 0], [ 1,-1,-1, 1, 1,0, 0,0, 0], [ 0, 0, 1,-1,-1,0, 0,0, 0], [ 0, 0,-1, 1, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0,1,0,0], [ 1,0,0,0,0,0,0,0,0], [ 0,1,1,0,0,0,0,0,0], [ 0,0,0,1,1,0,0,0,0], [ 0,0,1,0,0,0,0,0,1 ] ]
paramValues=[ 167//500,411//500000,79//100,449//100,7//40,23//20,243//500,79//25000,37//2,61//2,1,923//50 ]
paramNames=[ "kd","ka","mu","ld","lm","la","delta","lambda","TIR1T","alpha_tr","cell","__cm_k12" ]
speciesNames=[ "auxin","TIR1","auxinTIR1","auxinTIR1VENUS","VENUS" ]
