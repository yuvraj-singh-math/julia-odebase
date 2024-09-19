# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4)=rational_function_field(QQ,["k1","k2","k3","k4"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(1*k3*k1 + (-1)*k2*x1)/k3, ((-1)*k3*k1 + 1*k2*x1)/k3 ]
constraints=[ 1*x1 + 1*x2 - k4 ]
ID="BIOMD0000000484"
pol=true
mass_bool=false
rev=0
irr=2
def=0
rat=true
desc="Cao2013 - Application of ABSIS method in birth-death process"
stoichMatrix=[ [ 1,-1], [ -1, 1 ] ]
reconStoichMatrix=[ [ 1,-1], [ -1, 1 ] ]
kineticMatrix=[ [ 0,1], [ 1,0 ] ]
paramValues=[ 1,1//40,1,0 ]
paramNames=[ "k1","k2","default","__cm_k4" ]
speciesNames=[ "S","ES" ]
