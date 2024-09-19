# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[((-1)*k5*(k1*x1*x2 - k2*x3) + 1*k5*k3*x3*x2 + 1*k5*k4*x3*k6)/k5, ((-1)*k5*(k1*x1*x2 - k2*x3) + (-1)*k5*k3*x3*x2)/k5, (1*k5*(k1*x1*x2 - k2*x3) + (-1)*k5*k3*x3*x2 + (-1)*k5*k4*x3*k6)/k5, 1*k5*k3*x3*x2/k5, 0, 1*k5*k4*x3*k6/k5 ]
constraints=[ 1*k5*x1 + 1*k5*x3 - k5*k7, 1*k5*x2 + 1*k5*x3 + 2*k5*x4 + 1*k5*x6 - k5*k8 ]
ID="BIOMD0000000282"
pol=true
mass_bool=true
rev=1
irr=2
def=0
rat=true
desc="Chance1952_Catalase_Mechanism"
stoichMatrix=[ [ -1, 1, 1], [ -1,-1, 0], [ 1,-1,-1], [ 0, 1, 0], [ 0, 0,-1], [ 0, 0, 1 ] ]
reconStoichMatrix=[ [ -1, 1, 1, 1], [ -1, 1,-1, 0], [ 1,-1,-1,-1], [ 0, 0, 1, 0], [ 0, 0, 0,-1], [ 0, 0, 0, 1 ] ]
kineticMatrix=[ [ 1,0,0,0], [ 1,0,1,0], [ 0,1,1,1], [ 0,0,0,0], [ 0,0,0,1], [ 0,0,0,0 ] ]
paramValues=[ 11,0,83//5,18//25,1,0,34//25,2 ]
paramNames=[ "k1","k2","k4_prime","k4","cell","a","__cm_k7","__cm_k8" ]
speciesNames=[ "e","x","p","p1","a","p2" ]
