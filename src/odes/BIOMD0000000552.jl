# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5)=rational_function_field(QQ,["k1","k2","k3","k4","k5"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(-1)*k5*k1*x1*x2/k5, (1*k5*k2 + (-1)*k5*k3*x1 + (-1)*k5*k4*x2)/k5 ]
constraints=[ x3 - x1//50 ]
ID="BIOMD0000000552"
pol=true
mass_bool=false
rev=0
irr=4
def=0
rat=true
desc="Ehrenstein2000 - Positive-Feedback model for the loss of acetylcholine in Alzheimer&#x27;s disease"
stoichMatrix=[ [ -1,0, 0, 0], [ 0,1,-1,-1], [ 0,0, 0, 0 ] ]
reconStoichMatrix=[ [ -1,0, 0, 0], [ 0,1,-1,-1], [ 0,0, 0, 0 ] ]
kineticMatrix=[ [ 1,0,0,0], [ 0,0,1,1], [ 0,0,0,0 ] ]
paramValues=[ 7//1000,33//100,21//5000,1//100,1 ]
paramNames=[ "k1","k2","k3","k4","Brain" ]
speciesNames=[ "a","b","aRel" ]
