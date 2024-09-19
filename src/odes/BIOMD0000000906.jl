# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k10*k1*x1 + (-1)*k10*(k2*x2*x1 + k3*x1*x1))/k10, (1*k10*(k4 + k6*x2*x1) + (-1)*k10*(k5*x2 + k7*k2*x2*x1))/k10, (1*k10*k8*x1 + (-1)*k10*k9*x3)/k10 ]
constraints=[ ]
ID="BIOMD0000000906"
pol=true
mass_bool=false
rev=0
irr=6
def=0
rat=true
desc="Dubey2007 - A mathematical model for the effect of toxicant on the immune system (without toxicant effect) Model1"
stoichMatrix=[ [ 1,-1,0, 0,0, 0], [ 0, 0,1,-1,0, 0], [ 0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0,0, 0], [ 0, 0,1,-1,0, 0], [ 0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0], [ 0,0,0,1,0,0], [ 0,0,0,0,0,1 ] ]
paramValues=[ 9//10,1//20,1//5,1//25,4//5,3//10,1//10,12//5,1//10,1 ]
paramNames=[ "beta","gamma","beta0","mu","a","b","n","alpha","alpha0","compartment" ]
speciesNames=[ "P","I","M" ]
