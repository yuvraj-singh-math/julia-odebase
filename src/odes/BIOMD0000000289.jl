# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[(1*k2*k1*x4 + (-1)*k7*x1 + (-1)*k11*x1 + (-1)*k12*x1*x2)/k16, (1*k4*x1 + 1*k5*x3*x1 + (-1)*k8*x2)/k16, (1*k6*x1 + (-1)*k9*x3)/k16, ((-1)*k1*x4 + 1*k3*x3 + (-1)*k10*x4)/k16, 0 ]
constraints=[ ]
ID="BIOMD0000000289"
pol=true
mass_bool=false
rev=0
irr=12
def=0
rat=true
desc="Alexander2010_Tcell_Regulation_Sys1"
stoichMatrix=[ [ 0, 1,0,0,0,0,-1, 0, 0, 0,-1,-1], [ 0, 0,0,1,1,0, 0,-1, 0, 0, 0, 0], [ 0, 0,0,0,0,1, 0, 0,-1, 0, 0, 0], [ -1, 0,1,0,0,0, 0, 0, 0,-1, 0, 0], [ 0,-1,0,0,0,0, 0, 0, 0, 0, 0, 0 ] ]
reconStoichMatrix=[ [ 0, 1,0,0,0,0,-1, 0, 0, 0,-1,-1], [ 0, 0,0,1,1,0, 0,-1, 0, 0, 0, 0], [ 0, 0,0,0,0,1, 0, 0,-1, 0, 0, 0], [ -1, 0,1,0,0,0, 0, 0, 0,-1, 0, 0], [ 0,-1,0,0,0,0, 0, 0, 0, 0, 0, 0 ] ]
kineticMatrix=[ [ 0,0,0,0,0,0,1,0,0,0,1,1], [ 0,0,0,0,0,0,0,1,0,0,0,0], [ 0,0,0,0,0,0,0,0,1,0,0,0], [ 1,0,0,0,0,0,0,0,0,1,0,0], [ 0,1,0,0,0,0,0,0,0,0,0,0 ] ]
paramValues=[ 1//400,1//10000,2000,200,2//125,1000,1//4,1//4,1//4,5,1//4,3//1000000,1//2,2001//400,1600//2001,1,0 ]
paramNames=[ "v","f","gamma","beta","pi1","lambdaE","muA","muR","muE","muG","b1","sigma1","mA","mG","R0","body","A_im" ]
speciesNames=[ "A","R","E","G","A_im" ]
