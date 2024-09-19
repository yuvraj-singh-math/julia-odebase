# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k9*k7 + (-1)*k9*k8*x1 + (-1)*k9*k1*x3*x1)/k9, (1*k9*k1*x3*x1 + (-1)*k9*k2*x2)/k9, (1*k9*(1 - k5)*k3*k2*x2 + (-1)*k9*k4*x3)/k9, (1*k9*k5*k3*k2*x2 + (-1)*k9*k4*x4)/k9 ]
constraints=[ ]
ID="BIOMD0000000875"
pol=true
mass_bool=false
rev=1
irr=7
def=0
rat=true
desc="Nelson2000- HIV-1 general model 1"
stoichMatrix=[ [ 1,-1,-1, 0,0,0, 0, 0], [ 0, 0, 1,-1,0,0, 0, 0], [ 0, 0, 0, 0,1,0,-1, 0], [ 0, 0, 0, 0,0,1, 0,-1 ] ]
reconStoichMatrix=[ [ 1,-1,-1, 0,0,0, 0,0, 0], [ 0, 0, 1,-1,0,0, 0,0, 0], [ 0, 0, 0, 0,1,0,-1,1, 0], [ 0, 0, 0, 0,0,1, 0,0,-1 ] ]
kineticMatrix=[ [ 0,1,1,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0,0], [ 0,0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 343//10000000000,1//2,480,3,1//2,134000,10,3//100,1 ]
paramNames=[ "k","delta","N","c","np","HIV","lambda","delta1","plasma" ]
speciesNames=[ "T","T_i","V_I","V_NI" ]
