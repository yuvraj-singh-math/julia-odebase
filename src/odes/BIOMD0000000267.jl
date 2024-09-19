# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(-1)*k7*x1*k2/k2, ((-1)*k5*x2*k2 + 1*k7*x1*k2)/k2, (1*k5*x2*k2 + (-1)*k6*x3*k3)/k3, 1*k6*x3*k3/k4 ]
constraints=[ 1*k2*x1 + 1*k2*x2 + 1*k3*x3 + 1*k4*x4 - k2*k8 + k3*k9 + k4*k10 ]
ID="BIOMD0000000267"
pol=true
mass_bool=true
rev=0
irr=3
def=0
rat=true
desc="Lebeda2008 - BoNT paralysis (3 step model)"
stoichMatrix=[ [ 0, 0,-1], [ -1, 0, 1], [ 1,-1, 0], [ 0, 1, 0 ] ]
reconStoichMatrix=[ [ 0, 0,-1], [ -1, 0, 1], [ 1,-1, 0], [ 0, 1, 0 ] ]
kineticMatrix=[ [ 0,0,1], [ 1,0,0], [ 0,1,0], [ 0,0,0 ] ]
paramValues=[ 1,1,1,1,141//1000,13//1000,29//500,1,0,0 ]
paramNames=[ "tension","extracellular","endosome","neuroplasm","__lp_r2_kT","__lp_r3_kL","__lp_r4_kB","__cm_k8","__cm_k9","__cm_k10" ]
speciesNames=[ "free","bound","translocate","lytic" ]
