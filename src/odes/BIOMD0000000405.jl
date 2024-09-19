# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[((-1)*k6*k4*x1*x5 + 1*k6*k1 + (-1)*k6*k5*x1)/k6, ((-1)*k6*k4*x2*x5 + 1*k6*k2 + (-1)*k6*k5*x2)/k6, (1*k6*k4*x1*x5 + (-1)*k6*k3*x3)/k6, (1*k6*k4*x2*x5 + (-1)*k6*k3*x4)/k6, ((-1)*k6*k4*x1*x5 + (-1)*k6*k4*x2*x5 + 1*k6*k3*x3 + 1*k6*k3*x4)/k6, 0/k6 ]
constraints=[ 1*k6*x3 + 1*k6*x4 + 1*k6*x5 - k6*k7 ]
ID="BIOMD0000000405"
pol=true
mass_bool=true
rev=0
irr=8
def=2
rat=true
desc="Cookson2011_EnzymaticQueueingCoupling"
stoichMatrix=[ [ -1, 0,1,0, 0, 0,-1, 0], [ 0,-1,0,1, 0, 0, 0,-1], [ 1, 0,0,0,-1, 0, 0, 0], [ 0, 1,0,0, 0,-1, 0, 0], [ -1,-1,0,0, 1, 1, 0, 0], [ 0, 0,0,0, 0, 0, 0, 0 ] ]
reconStoichMatrix=[ [ -1, 0,1,0, 0, 0,-1, 0], [ 0,-1,0,1, 0, 0, 0,-1], [ 1, 0,0,0,-1, 0, 0, 0], [ 0, 1,0,0, 0,-1, 0, 0], [ -1,-1,0,0, 1, 1, 0, 0], [ 0, 0,0,0, 0, 0, 0, 0 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0,1,0], [ 0,1,0,0,0,0,0,1], [ 0,0,0,0,1,0,0,0], [ 0,0,0,0,0,1,0,0], [ 1,1,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0 ] ]
paramValues=[ 500,500,10,1000,3465735902799//100000000000000,1,100 ]
paramNames=[ "parameter_1","parameter_2","parameter_3","parameter_4","parameter_5","compartment_1","__cm_k7" ]
speciesNames=[ "species_1","species_2","species_3","species_4","species_5","species_6" ]
