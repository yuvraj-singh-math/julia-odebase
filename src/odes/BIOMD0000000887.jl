# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k11*k1 + (-1)*k11*k2*x1*x3 + (-1)*k11*k7*x1)/k11, (1*k11*k2*x1*x3 + 1*k11*k3*x3 + (-1)*k11*k4*x2 + (-1)*k11*k8*x2)/k11, (1*k11*k4*x2 + (-1)*k11*k5*x3*x4 + (-1)*k11*k9*x3)/k11, (1*k11*k6*x3 + (-1)*k11*k10*x4)/k11 ]
constraints=[ ]
ID="BIOMD0000000887"
pol=true
mass_bool=false
rev=0
irr=10
def=0
rat=true
desc="Lim2014 - HTLV-I infection A dynamic struggle between viral persistence and host immunity"
stoichMatrix=[ [ 1,-1,-1,0, 0, 0, 0, 0,0, 0], [ 0, 1, 0,1,-1,-1, 0, 0,0, 0], [ 0, 0, 0,0, 1, 0,-1,-1,0, 0], [ 0, 0, 0,0, 0, 0, 0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,-1,0, 0, 0, 0, 0,0, 0], [ 0, 1, 0,1,-1,-1, 0, 0,0, 0], [ 0, 0, 0,0, 1, 0,-1,-1,0, 0], [ 0, 0, 0,0, 0, 0, 0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,1,0,0,0,0,0,0,0], [ 0,0,0,0,1,1,0,0,0,0], [ 0,0,0,0,0,0,1,1,0,0], [ 0,0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 10,1//1000,11//1000,3//1000,29//1000,9//250,3//250,3//100,3//100,3//100,1 ]
paramNames=[ "lambda","beta","r","tau","gamma","nu","mu_1","mu_2","mu_3","mu_4","compartment" ]
speciesNames=[ "x","u","y","z" ]
