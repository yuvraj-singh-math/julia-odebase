# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5)=rational_function_field(QQ,["k1","k2","k3","k4","k5"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(1*k5*k1*x1*(1 - x1) + (-1)*k5*k2*x1)/k5, (1*k5*k3*x2*(1 - x2 - x1) + (-1)*k5*k4*x2 + (-1)*k5*k1*x2*x1)/k5 ]
constraints=[ ]
ID="BIOMD0000000793"
pol=true
mass_bool=false
rev=0
irr=5
def=0
rat=true
desc="Chen2011/1 - bone marrow invasion absolute model"
stoichMatrix=[ [ 1,-1,0, 0, 0], [ 0, 0,1,-1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0, 0], [ 0, 0,1,-1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0], [ 0,0,0,1,1 ] ]
paramValues=[ 1//5,1//10,4//5,1//10,1 ]
paramNames=[ "b1","u1","b2","u2","bone_marrow" ]
speciesNames=[ "H","T" ]
