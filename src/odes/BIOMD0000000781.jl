# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k11*k1 + (-1)*k11*k2*x1 + (-1)*k11*k3*x1*x2 + (-1)*k11*k4*x1*x3)/k11, (1*k11*k5*k3*x1*x2 + (-1)*k11*(k2 + k6)*x2)/k11, (1*k11*k7*k4*x1*x3 + (-1)*k11*(k2 + k8)*x3)/k11 ]
constraints=[ ]
ID="BIOMD0000000781"
pol=true
mass_bool=false
rev=0
irr=8
def=0
rat=true
desc="Wang2016/2 - oncolytic efficacy of M1 virus-SNT model"
stoichMatrix=[ [ 1,-1,-1,-1,0, 0,0, 0], [ 0, 0, 0, 0,1,-1,0, 0], [ 0, 0, 0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,-1,-1,0, 0,0, 0], [ 0, 0, 0, 0,1,-1,0, 0], [ 0, 0, 0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,1,1,0,0,0,0], [ 0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,1 ] ]
paramValues=[ 1//50,1//50,1//5,1//2,4//5,1//100,4//5,1//125,16//3,100//7,1 ]
paramNames=[ "a","d","u1","u2","r1","e1","r2","e2","Q1","Q2","tme" ]
speciesNames=[ "S","N","T" ]
