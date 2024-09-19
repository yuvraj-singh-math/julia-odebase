# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[(1*k16*k1*x1 + (-1)*k16*(k2*x2*x1 + k3*x1*x1))/k16, (1*k16*(k4 + k6*x2*x1) + (-1)*k16*(k5*x2 + k7*k2*x2*x1 + k15*k14*x5*x2))/k16, (1*k16*k8*x1 + (-1)*k16*k9*x3)/k16, (1*k16*k10 + (-1)*k16*k11*x4)/k16, (1*k16*k12*x4 + (-1)*k16*(k13*x5 + k14*x5*x2))/k16 ]
constraints=[ ]
ID="BIOMD0000000905"
pol=true
mass_bool=false
rev=0
irr=10
def=0
rat=true
desc="Dubey2007 - A mathematical model for the effect of toxicant on the immune system (with toxicant effect) Model2"
stoichMatrix=[ [ 1,-1,0, 0,0, 0,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0,0, 0], [ 0, 0,0, 0,1,-1,0, 0,0, 0], [ 0, 0,0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0,0, 0,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0,0, 0], [ 0, 0,0, 0,1,-1,0, 0,0, 0], [ 0, 0,0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0,0,0], [ 0,0,0,0,0,1,0,0,0,0], [ 0,0,0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 1//2,1//20,1//5,1//25,4//5,3//10,1//10,12//5,1//10,5,2//5,6//5,1//50,3//5,1//2,1 ]
paramNames=[ "beta","gamma","beta0","mu","a","b","n","alpha","alpha0","Q0","delta_0","theta_0","delta_1","k1","n1","compartment" ]
speciesNames=[ "P","I","M","T","U" ]
