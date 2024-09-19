# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k12*k1*k5*x1*(1 - x1/k4) + (-1)*k12*k2*(1 - k5)*x1)/k12, (1*k12*k2*(1 - k5)*x1 + (-1)*k12*k3*x2)/k12, (1*k12*(k6*x1 + k7*x2) + (-1)*k12*k8*x3)/k12, (1*k12*k9*x4*(1 - x4/k10) + (-1)*k12*k11*x3*x4)/k12 ]
constraints=[ ]
ID="BIOMD0000000885"
pol=true
mass_bool=false
rev=0
irr=8
def=0
rat=true
desc="Sumana2018 - Mathematical modeling of cancer-immune system, considering the role of antibodies."
stoichMatrix=[ [ 1,-1,0, 0,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0], [ 0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0], [ 0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0], [ 0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,1 ] ]
paramValues=[ 1//10,1//100,1//100,1000000,1//10,100,1000,1721//250,431//1000,980000000,30218000,1 ]
paramNames=[ "a","b","mu_1","k_1","u","r_1","r_2","mu_2","r","k_2","beta_1","compartment" ]
speciesNames=[ "B","P","A","T" ]
