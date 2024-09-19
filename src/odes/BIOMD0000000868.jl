# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[0, (1*k2*k3*k9 + (-1)*k2*k6*x2 + (-1)*k2*(k7*x2*x4 - k8*x5))/k2, (1*k2*k4*x5 + (-1)*k2*k5*x3)/k2, (1*k2*k4*x5 + (-1)*k2*(k7*x2*x4 - k8*x5))/k2, ((-1)*k2*k4*x5 + 1*k2*(k7*x2*x4 - k8*x5))/k2 ]
constraints=[ 1*k2*x4 + 1*k2*x5 - k2*k10 ]
ID="BIOMD0000000868"
pol=true
mass_bool=true
rev=1
irr=4
def=1
rat=true
desc="Simon2019 - NIK-dependent p100 processing into p52, Mass Action, SBML 2v4"
stoichMatrix=[ [ -1, 0, 0, 0, 0], [ 1, 0, 0,-1,-1], [ 0, 1,-1, 0, 0], [ 0, 1, 0, 0,-1], [ 0,-1, 0, 0, 1 ] ]
reconStoichMatrix=[ [ -1, 0, 0, 0, 0, 0], [ 1, 0, 0,-1,-1, 1], [ 0, 1,-1, 0, 0, 0], [ 0, 1, 0, 0,-1, 1], [ 0,-1, 0, 0, 1,-1 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0], [ 0,0,0,1,1,0], [ 0,0,1,0,0,0], [ 0,0,0,0,1,0], [ 0,1,0,0,0,1 ] ]
paramValues=[ 0,1,1//5,1//20,19//50000,19//50000,1//200,3//12500,5//2,10 ]
paramNames=[ "p52_uM","compartment","__lp_r2_k1","__lp_r3_k1","__lp_r4_k1","__lp_r5_k1","__lp_r6_k1","__lp_r6_k2","p100t","__cm_k10" ]
speciesNames=[ "p100t","p100","p52","NIK","p100_NIK" ]
