# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[(1*k7*k4*x6 + (-1)*k7*k2*x3)/k7, (2*k7*k3*x2*x6 + (-1)*k7*k2*x3 + (-1)*k7*k1*x4)/k7, (1*k7*k2*x3 + (-1)*k7*k1*x4)/k7, 0 ]
constraints=[ x2 - k6 - x3, x6 - k5 - x1 ]
ID="BIOMD0000000292"
pol=true
mass_bool=false
rev=0
irr=4
def=1
rat=true
desc="Rovers1995_Photsynthetic_Oscillations"
stoichMatrix=[ [ 1, 0,-1, 0], [ 0,-2, 1, 1], [ 0, 2,-1,-1], [ 0, 0, 1,-1], [ 0, 0,-1, 1], [ -1, 0, 1, 0 ] ]
reconStoichMatrix=[ [ 1, 0,-1, 0], [ 0,-2, 1, 1], [ 0, 2,-1,-1], [ 0, 0, 1,-1], [ 0, 0,-1, 1], [ -1, 0, 1, 0 ] ]
kineticMatrix=[ [ 0,0,1,0], [ 0,2,0,0], [ 0,0,1,1], [ 0,0,0,1], [ 0,0,1,0], [ 1,0,0,0 ] ]
paramValues=[ 123//1000,5//8,3//10,307//500,6//5,5//2,1,1 ]
paramNames=[ "k1","k2","k3","k4","N0","A0","c","Y" ]
speciesNames=[ "NADPH","ADP","ATP","X","Y","NADP" ]
