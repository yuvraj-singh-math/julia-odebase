# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(1*k7*k3*x1*(1 - x1 - (1 - k5)*x2) + (-1)*k7*k4*x1 + (-1)*k7*k1*x1*x2*k6)/k7, (1*k7*k1*x2*(1 - x2 - (1 - k6)*x1) + (-1)*k7*k2*x2 + (-1)*k7*k3*x2*x1*k5)/k7 ]
constraints=[ ]
ID="BIOMD0000000795"
pol=true
mass_bool=false
rev=0
irr=6
def=0
rat=true
desc="Chen2011/2 - bone marrow invasion relative model"
stoichMatrix=[ [ 1,-1,0, 0, 0,-1], [ 0, 0,1,-1,-1, 0 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0, 0,-1], [ 0, 0,1,-1,-1, 0 ] ]
kineticMatrix=[ [ 0,1,0,0,0,1], [ 0,0,0,1,1,0 ] ]
paramValues=[ 1//5,1//10,4//5,1//10,1//10,9//10,1 ]
paramNames=[ "b1","u1","b2","u2","v","k","bone_marrow" ]
speciesNames=[ "H","T" ]
