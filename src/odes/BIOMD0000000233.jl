# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[0, 0, (2*k2*k6*x4 + (-1)*k3*x3^2 + (-1)*k4*x3*x4 + (-1)*k5*x3)/k1, ((-1)*k2*k6*x4 + 1*k3*x3^2)/k1 ]
constraints=[ ]
ID="BIOMD0000000233"
pol=true
mass_bool=true
rev=0
irr=4
def=1
rat=true
desc="Wilhelm2009_BistableReaction"
stoichMatrix=[ [ -1, 0, 0, 0], [ 0, 0, 1, 1], [ 2,-1,-1,-1], [ -1, 1, 0, 0 ] ]
reconStoichMatrix=[ [ -1, 0, 0, 0], [ 0, 0, 1, 1], [ 2,-1,-1,-1], [ -1, 1, 0, 0 ] ]
kineticMatrix=[ [ 1,0,0,0], [ 0,0,0,0], [ 0,2,1,1], [ 1,0,1,0 ] ]
paramValues=[ 1,8,1,1,3//2,1,1 ]
paramNames=[ "batch","__lp_r2_k1","__lp_r3_k2","__lp_r4_k3","__lp_r5_k4","S","P" ]
speciesNames=[ "S","P","X","Y" ]
