# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k8*k1*x3*x1 + (-1)*k8*k1*x1*x3*(x1 + x2)/k2 + (-1)*k8*k3*x1 + (-1)*k8*k4*x3*x1)/k8, (1*k8*k4*x3*x1 + 1*k8*k1*x3*x2 + (-1)*k8*k1*x2*x3*(x1 + x2)/k2 + (-1)*k8*k5*x2)/k8, (1*k8*k6*x2 + (-1)*k8*k7*x3)/k8 ]
constraints=[ ]
ID="BIOMD0000000663"
pol=true
mass_bool=false
rev=0
irr=9
def=0
rat=true
desc="Wodarz2007 - HIV/CD4 T-cell interaction"
stoichMatrix=[ [ 1,-1,-1,-1,0, 0, 0,0, 0], [ 0, 0, 0, 1,1,-1,-1,0, 0], [ 0, 0, 0, 0,0, 0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,-1,-1,0, 0, 0,0, 0], [ 0, 0, 0, 1,1,-1,-1,0, 0], [ 0, 0, 0, 0,0, 0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,1,1,0,0,0,0,0], [ 0,0,0,0,0,1,1,0,0], [ 0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 1,10,1//10,1//5,1//5,1,1//2,1 ]
paramNames=[ "r","k","d","Beta","a","eta","u","compartment" ]
speciesNames=[ "x","y","v" ]
