# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(1*k9*k1*k5*x1*(x1 - 1)/k7 + (-1)*k9*k2//1*x1*(x1 - 1)*(x1 - 2)/k7^2 + 1*k9*k3*k6*k7 + (-1)*k9*k4*x1)/k9, ((-1)*k9*k1*k5*x1*(x1 - 1)/k7 + 1*k9*k2//1*x1*(x1 - 1)*(x1 - 2)/k7^2 + (-1)*k9*k3*k6*k7 + 1*k9*k4*x1)/k9 ]
constraints=[ 1*x1 + 1*x2 - k10 ]
ID="BIOMD0000000485"
pol=true
mass_bool=false
rev=0
irr=4
def=0
rat=true
desc="Cao2013 - Application of ABSIS method in the bistable SchlÃ¶gl model"
stoichMatrix=[ [ 1,-1, 1,-1], [ -1, 1,-1, 1 ] ]
reconStoichMatrix=[ [ 1,-1, 1,-1], [ -1, 1,-1, 1 ] ]
kineticMatrix=[ [ 0,1,0,1], [ 1,0,1,0 ] ]
paramValues=[ 3,3//5,1//4,59//20,1,2,25,1,1,2 ]
paramNames=[ "k1","k2","k3","k4","A","B","V","value","default","__cm_k10" ]
speciesNames=[ "X","ES" ]
