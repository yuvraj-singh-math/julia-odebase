# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k10*(k1 + k2*x1*(1 - x1/k4)) + (-1)*k10*k3*x1*x2)/k10, (1*k10*k5*x2*x3 + (-1)*k10*k6*x2)/k10, (1*k10*k7*x3*(1 - x3/k8) + (-1)*k10*(k5*x2*x3 + k9*x3))/k10 ]
constraints=[ ]
ID="BIOMD0000000911"
pol=true
mass_bool=false
rev=0
irr=6
def=0
rat=true
desc="Merola2008 - An insight into tumor dormancy equilibrium via the analysis of its domain of attraction"
stoichMatrix=[ [ 1,-1,0, 0,0, 0], [ 0, 0,1,-1,0, 0], [ 0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0,0, 0], [ 0, 0,1,-1,0, 0], [ 0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0], [ 0,0,0,1,0,0], [ 0,0,0,0,0,1 ] ]
paramValues=[ 10,9//10,3//10,4//5,1//10,1//50,4//5,7//10,3//100,1 ]
paramNames=[ "q","r","alpha","k1","beta","d1","s","k2","d2","compartment" ]
speciesNames=[ "M","N","Z" ]
