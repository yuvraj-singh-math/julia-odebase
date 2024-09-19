# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[((-1)*k12*k2*x1*x3 + 1*k12*k1*x2 + 1*k12*k6 + (-1)*k12*k8*x1 + (-1)*k12*k7*x1*x5)/k12, (1*k12*k2*x1*x3 + (-1)*k12*k1*x2)/k12, ((-1)*k12*k2*x1*x3 + 1*k12*k1*x2)/k12, (1*k12*k4*x3 + 1*k12*k3*x2 + (-1)*k12*k5*x4)/k12, (1*k12*k10*x4 + (-1)*k12*k9*x5 + (-1)*k12*k7*x1*x5)/k12, (1*k12*k7*x1*x5 + (-1)*k12*k11*x6)/k12 ]
constraints=[ 1*k12*x2 + 1*k12*x3 - k12*k13 ]
ID="BIOMD0000000539"
pol=true
mass_bool=false
rev=0
irr=11
def=1
rat=true
desc="François2005 - Mixed Feedback Loop (two-gene network)"
stoichMatrix=[ [ -1, 1,0,0, 0,1,-1,0, 0,-1, 0], [ 1,-1,0,0, 0,0, 0,0, 0, 0, 0], [ -1, 1,0,0, 0,0, 0,0, 0, 0, 0], [ 0, 0,1,1,-1,0, 0,0, 0, 0, 0], [ 0, 0,0,0, 0,0, 0,1,-1,-1, 0], [ 0, 0,0,0, 0,0, 0,0, 0, 1,-1 ] ]
reconStoichMatrix=[ [ -1, 1,0,0, 0,1,-1,0, 0,-1, 0], [ 1,-1,0,0, 0,0, 0,0, 0, 0, 0], [ -1, 1,0,0, 0,0, 0,0, 0, 0, 0], [ 0, 0,1,1,-1,0, 0,0, 0, 0, 0], [ 0, 0,0,0, 0,0, 0,1,-1,-1, 0], [ 0, 0,0,0, 0,0, 0,0, 0, 1,-1 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0,1,0,0,1,0], [ 0,1,0,0,0,0,0,0,0,0,0], [ 1,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,1,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,1,1,0], [ 0,0,0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 1//25,1//1000,5,1//10,3//100,100,1,1//100,1//100,3,1//100,1,1 ]
paramNames=[ "theta","alpha","rhob","rhof","deltar","rhoA","gamma","deltaA","deltaB","beta","deltaAB","cell","__cm_k13" ]
speciesNames=[ "A","AgB","gB","rB","B","AB" ]
