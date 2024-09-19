# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(1*k7*1//16*x1 + (-1)*k7*1//8*x1*x2 + (-1)*k7*1//32*x1^2)/k7, (1*k7*1//32*x2 + (-1)*k7*275//3200*x1*x2 + (-1)*k7*1//32*x2^2)/k7 ]
constraints=[ ]
ID="BIOMD0000000815"
pol=true
mass_bool=false
rev=0
irr=6
def=0
rat=true
desc="Chrobak2011 - A mathematical model of induced cancer-adaptive immune system competition"
stoichMatrix=[ [ 1,-1,-1,0, 0, 0], [ 0, 0, 0,1,-1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,-1,0, 0, 0], [ 0, 0, 0,1,-1,-1 ] ]
kineticMatrix=[ [ 0,1,1,0,0,0], [ 0,0,0,0,1,1 ] ]
paramValues=[ 1//16,1//8,1//32,1//32,11//128,1//32,1 ]
paramNames=[ "a","b","c","d","e","f","compartment" ]
speciesNames=[ "x_Cancer","y_Immune_System" ]
