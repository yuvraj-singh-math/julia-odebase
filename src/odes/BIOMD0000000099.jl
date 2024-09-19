# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16"])
polRing,(x1,x2,x3,x4,x5,x6,x7)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7"])
chemSystem=[(1*k15*k11*x5 + (-1)*k15*k12*x1)/k15, (1*k16*k9*x5 + (-1)*k16*k10*x2*x4)/k16, (1*k16*k3*x2 + (-1)*k16*k4*x3)/k16, (1*k16*k7 + (-1)*k16*k8*x4*x7)/k16, (1*k16*k1*x7 + (-1)*k16*k2*x5)/k16, (1*k16*k13*x1 + (-1)*k16*k14*x6*x3)/k16, (1*k16*k5*x6 + (-1)*k16*k6*x7*x3)/k16 ]
constraints=[ ]
ID="BIOMD0000000099"
pol=true
mass_bool=false
rev=0
irr=14
def=0
rat=true
desc="Laub1998_SpontaneousOscillations"
stoichMatrix=[ [ 0, 0,0, 0,0, 0,0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,0, 0,1,-1,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0,0, 0,0, 0,0, 0], [ 0, 0,0, 0,0, 0,1,-1,0, 0,0, 0,0, 0], [ 1,-1,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0], [ 0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,1,-1], [ 0, 0,0, 0,1,-1,0, 0,0, 0,0, 0,0, 0 ] ]
reconStoichMatrix=[ [ 0, 0,0, 0,0, 0,0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,0, 0,1,-1,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0,0, 0,0, 0,0, 0], [ 0, 0,0, 0,0, 0,1,-1,0, 0,0, 0,0, 0], [ 1,-1,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0], [ 0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,1,-1], [ 0, 0,0, 0,1,-1,0, 0,0, 0,0, 0,0, 0 ] ]
kineticMatrix=[ [ 0,0,0,0,0,0,0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,0,0,1,0,0,0,0], [ 0,0,0,1,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,1,0,0,0,0,0,0], [ 0,1,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,1], [ 0,0,0,0,0,1,0,0,0,0,0,0,0,0 ] ]
paramValues=[ 7//5,9//10,5//2,3//2,3//5,4//5,2,13//10,29//100,1,3//5,31//10,33,9//2,1,1 ]
paramNames=[ "parameter_0","parameter_1","parameter_2","parameter_3","parameter_4","parameter_5","parameter_6","parameter_7","parameter_8","parameter_9","parameter_10","parameter_11","parameter_12","parameter_13","compartment_0","compartment_1" ]
speciesNames=[ "species_0","species_1","species_2","species_3","species_4","species_5","species_6" ]
