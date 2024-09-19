# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5)=rational_function_field(QQ,["k1","k2","k3","k4","k5"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(-1)*k3*(x2*x1 - k1*x3)/k3, ((-1)*k3*(x2*x1 - k1*x3) + 1*k3*k2*x3)/k3, (1*k3*(x2*x1 - k1*x3) + (-1)*k3*k2*x3)/k3, 1*k3*k2*x3/k3 ]
constraints=[ 1*k3*x1 + 1*k3*x3 + 1*k3*x4 - k3*k4, 1*k3*x2 + 1*k3*x3 - k3*k5 ]
ID="BIOMD0000000283"
pol=true
mass_bool=true
rev=1
irr=1
def=0
rat=true
desc="Chance1943_Peroxidase_ES_Kinetics"
stoichMatrix=[ [ -1, 0], [ -1, 1], [ 1,-1], [ 0, 1 ] ]
reconStoichMatrix=[ [ -1, 1, 0], [ -1, 1, 1], [ 1,-1,-1], [ 0, 0, 1 ] ]
kineticMatrix=[ [ 1,0,0], [ 1,0,0], [ 0,1,1], [ 0,0,0 ] ]
paramValues=[ 0,1//2,1,8,1 ]
paramNames=[ "K2","K3","cell","__cm_k4","__cm_k5" ]
speciesNames=[ "X","E","P","Q" ]
