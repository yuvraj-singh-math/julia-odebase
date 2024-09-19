# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(1*k7*k1*x1 + (-1)*k7*k1*k2*x1*x1 + (-1)*k7*k3*x1*x2)/k7, ((-1)*k7*k6*x2 + 1*k7*k4 + 1*k7*k5*x2*x1)/k7 ]
constraints=[ ]
ID="BIOMD0000000742"
pol=true
mass_bool=false
rev=0
irr=6
def=0
rat=true
desc="Garcia2018basic - cancer and immune cell count basic model"
stoichMatrix=[ [ 1,-1,-1, 0,0,0], [ 0, 0, 0,-1,1,1 ] ]
reconStoichMatrix=[ [ 1,-1,-1, 0,0,0], [ 0, 0, 0,-1,1,1 ] ]
kineticMatrix=[ [ 0,1,1,0,0,0], [ 0,0,0,1,0,0 ] ]
paramValues=[ 257//500,51//50000000000,1//10000,10,-1//1000000,1//50,1 ]
paramNames=[ "a","b","k","s","m","d","Tumor" ]
speciesNames=[ "T","E" ]
