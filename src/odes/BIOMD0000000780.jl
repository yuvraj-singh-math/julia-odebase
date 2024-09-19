# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k16*k1 + (-1)*k16*k2*x1 + (-1)*k16*k3*x1*x2 + (-1)*k16*k4*x1*x3)/k16, (1*k16*k5*k3*x1*x2 + (-1)*k16*(k2 + k6)*x2)/k16, (1*k16*k7*k4*x1*x3 + (-1)*k16*(k2 + k8)*x3 + (-1)*k16*k9*x3*x4)/k16, (1*k16*k10 + 1*k16*k11*k9*x3*x4 + (-1)*k16*(k2 + k12)*x4)/k16 ]
constraints=[ ]
ID="BIOMD0000000780"
pol=true
mass_bool=false
rev=0
irr=12
def=0
rat=true
desc="Wang2016/1 - oncolytic efficacy of M1 virus-SNTM model"
stoichMatrix=[ [ 1,-1,-1,-1,0, 0,0, 0, 0,0,0, 0], [ 0, 0, 0, 0,1,-1,0, 0, 0,0,0, 0], [ 0, 0, 0, 0,0, 0,1,-1,-1,0,0, 0], [ 0, 0, 0, 0,0, 0,0, 0, 0,1,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,-1,-1,0, 0,0, 0, 0,0,0, 0], [ 0, 0, 0, 0,1,-1,0, 0, 0,0,0, 0], [ 0, 0, 0, 0,0, 0,1,-1,-1,0,0, 0], [ 0, 0, 0, 0,0, 0,0, 0, 0,1,1,-1 ] ]
kineticMatrix=[ [ 0,1,1,1,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,1,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,1,1,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 1//50,1//50,1//5,2//5,4//5,1//100,4//5,1//25,1//10,1//1000,1//2,1//100,16//3,16//3,0,1 ]
paramNames=[ "a","d","u1","u2","r1","e1","r2","e2","u3","b","r3","e3","Q1","Q2","B0","tme" ]
speciesNames=[ "S","N","T","M" ]
