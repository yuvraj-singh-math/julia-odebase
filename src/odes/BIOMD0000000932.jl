# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k8*(k1*k6*x1 - k2*x3*x1) + (-1)*k8*k4*x1)/k8, (1*k8*k4*x1 + (-1)*k8*k5*x2)/k8, (1*k8*k5*x2 + (-1)*k8*k3*x3)/k8, 1*k8*k7*x3*x1*x4/k8 ]
constraints=[ ]
ID="BIOMD0000000932"
pol=true
mass_bool=false
rev=0
irr=5
def=0
rat=true
desc="Garde2020-Minimal model describing metabolic oscillations in Bacillus subtilis biofilms"
stoichMatrix=[ [ 1,-1, 0, 0,0], [ 0, 1,-1, 0,0], [ 0, 0, 1,-1,0], [ 0, 0, 0, 0,1 ] ]
reconStoichMatrix=[ [ 1,-1, 0, 0,0], [ 0, 1,-1, 0,0], [ 0, 0, 1,-1,0], [ 0, 0, 0, 0,1 ] ]
kineticMatrix=[ [ 0,1,0,0,0], [ 0,0,1,0,0], [ 0,0,0,1,0], [ 0,0,0,0,0 ] ]
paramValues=[ 1713//5000,53//10,4,2,23//10,30,1//10,1 ]
paramNames=[ "k1","k2","k3","k4","k5","GE","b","compartment" ]
speciesNames=[ "Gp","Gi","A","B" ]
