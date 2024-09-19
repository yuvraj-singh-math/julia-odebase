# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[0, k3*(x4 - x2)*(k4/k3 + x2^2) - k2*x2, k1 - k2*x2 ]
constraints=[ x3 - x4 - x2 ]
ID="BIOMD0000000006"
pol=true
mass_bool=false
rev=0
irr=3
def=0
rat=true
desc="Tyson1991 - Cell Cycle 2 var"
stoichMatrix=[ [ -1, 1, 0], [ 0,-1, 1], [ 1, 0,-1], [ 0, 0, 0 ] ]
reconStoichMatrix=[ [ -1, 1, 0], [ 0,-1, 1], [ 1, 0,-1], [ 0, 0, 0 ] ]
kineticMatrix=[ [ 1,0,0], [ 0,1,0], [ 0,0,1], [ 0,0,0 ] ]
paramValues=[ 3//200,1,180,9//500,1//10000,1,1 ]
paramNames=[ "kappa","k6","k4","k4prime","alpha","cell","EmptySet" ]
speciesNames=[ "EmptySet","u","z","v" ]
