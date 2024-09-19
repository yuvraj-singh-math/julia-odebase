# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[((-1)*k1*k2*x1 + (-1)*k1*k4*x1)/k1, (1*k1*k2*x1 + (-1)*k1*k3*x2)/k1, (1*k1*k3*x2 + 1*k1*k5*x4)/k1, (1*k1*k4*x1 + (-1)*k1*k5*x4)/k1 ]
constraints=[ 1*k1*x1 + 1*k1*x2 + 1*k1*x3 + 1*k1*x4 - k1*k6 ]
ID="BIOMD0000000363"
pol=true
mass_bool=true
rev=0
irr=4
def=0
rat=true
desc="Lee2010_ThrombinActivation_OneForm_minimal"
stoichMatrix=[ [ -1, 0,-1, 0], [ 1,-1, 0, 0], [ 0, 1, 0, 1], [ 0, 0, 1,-1 ] ]
reconStoichMatrix=[ [ -1, 0,-1, 0], [ 1,-1, 0, 0], [ 0, 1, 0, 1], [ 0, 0, 1,-1 ] ]
kineticMatrix=[ [ 1,0,1,0], [ 0,1,0,0], [ 0,0,0,0], [ 0,0,0,1 ] ]
paramValues=[ 1,1//200,1//100,1//100000,1//40000,1 ]
paramNames=[ "compartment","__lp_r2_k1","__lp_r3_k1","__lp_r4_k1","__lp_r5_k1","__cm_k6" ]
speciesNames=[ "II","M","IIa","P2" ]
