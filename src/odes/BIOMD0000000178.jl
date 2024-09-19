# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[(-1)*k8*x2*k2/k2, ((-1)*k7*x3*k2 + 1*k8*x2*k2)/k2, ((-1)*k5*x4*k2 + 1*k7*x3*k2)/k2, (1*k5*x4*k2 + (-1)*k6*x5*k3)/k3, 1*k6*x5*k3/k4 ]
constraints=[ x1 - x2 + x3, 1*k2*x2 + 1*k2*x3 + 1*k2*x4 + 1*k3*x5 + 1*k4*x6 - k2*k9 + k3*k10 + k4*k11 ]
ID="BIOMD0000000178"
pol=true
mass_bool=false
rev=0
irr=4
def=0
rat=true
desc="Lebeda2008 - BoTN Paralysis (4 step model)"
stoichMatrix=[ [ 0, 0, 0, 0], [ 0, 0, 0,-1], [ 0, 0,-1, 1], [ -1, 0, 1, 0], [ 1,-1, 0, 0], [ 0, 1, 0, 0 ] ]
reconStoichMatrix=[ [ 0, 0, 0, 0], [ 0, 0, 0,-1], [ 0, 0,-1, 1], [ -1, 0, 1, 0], [ 1,-1, 0, 0], [ 0, 1, 0, 0 ] ]
kineticMatrix=[ [ 0,0,0,0], [ 0,0,0,1], [ 0,0,1,0], [ 1,0,0,0], [ 0,1,0,0], [ 0,0,0,0 ] ]
paramValues=[ 1,1,1,1,141//1000,13//1000,29//500,3//20000,1,0,0 ]
paramNames=[ "tension","extracellular","endosome","neuroplasm","__lp_r2_kT","__lp_r3_kL","__lp_r4_kB","__lp_r5_kS","__cm_k9","__cm_k10","__cm_k11" ]
speciesNames=[ "BoNT","bulk","free","bound","translocate","lytic" ]
