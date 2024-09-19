# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(1*k7*k1 + (-1)*k7*k2*x1 + (-1)*k7*k3*x1*x2)/k7, (1*k7*k4*k3*x1*x2 + (-1)*k7*(k2 + k5)*x2)/k7 ]
constraints=[ ]
ID="BIOMD0000000782"
pol=true
mass_bool=false
rev=0
irr=5
def=0
rat=true
desc="Wang2016/3 - oncolytic efficacy of M1 virus-SN model"
stoichMatrix=[ [ 1,-1,-1,0, 0], [ 0, 0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,-1,0, 0], [ 0, 0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,1,0,0], [ 0,0,0,0,1 ] ]
paramValues=[ 1//50,1//50,1//5,4//5,1//100,16//3,1 ]
paramNames=[ "a","d","u1","r1","e1","Q1","tme" ]
speciesNames=[ "S","N" ]
