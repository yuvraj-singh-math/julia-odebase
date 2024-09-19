# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[((-1)*k1*k2*x1 + (-1)*k1*(k3*x2*x1 - k4*x4))/k1, (1*k1*k2*x1 + (-1)*k1*(k3*x2*x1 - k4*x4) + 2*k1*k5*x4)/k1, (1*k1*k2*x1 + 1*k1*k5*x4)/k1, (1*k1*(k3*x2*x1 - k4*x4) + (-1)*k1*k5*x4)/k1 ]
constraints=[ 1*k1*x1 + 1*k1*x2 + 2*k1*x4 - k1*k6, 1*k1*x1 + 1*k1*x3 + 1*k1*x4 - k1*k7 ]
ID="BIOMD0000000092"
pol=true
mass_bool=true
rev=3
irr=0
def=1
rat=true
desc="Fuentes2005_ZymogenActivation"
stoichMatrix=[ [ -1,-1, 0], [ 1,-1, 2], [ 1, 0, 1], [ 0, 1,-1 ] ]
reconStoichMatrix=[ [ -1, 1,-1, 1, 0, 0], [ 1,-1,-1, 1, 2,-2], [ 1,-1, 0, 0, 1,-1], [ 0, 0, 1,-1,-1, 1 ] ]
kineticMatrix=[ [ 1,0,1,0,0,0], [ 0,1,1,0,0,2], [ 0,1,0,0,0,1], [ 0,0,0,1,1,0 ] ]
paramValues=[ 1,1//250,1000,21//100000,27//50000,3//125000,3//125000 ]
paramNames=[ "compartment","__lp_r2_k1","__lp_r3_k21","__lp_r3_k22","__lp_r4_k3","__cm_k6","__cm_k7" ]
speciesNames=[ "z","e","w","ez" ]
