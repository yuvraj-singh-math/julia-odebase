# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k12*(k1 + k2*x1*(1 - (x1 + 1)/k3)) + (-1)*k12*(k4*x1 + (1 - k10*k11)*k5*x3*x1))/k12, (1*k12*(1 - k10*k11)*k5*x3*x1 + (-1)*k12*k6*x2)/k12, (1*k12*(1 - (k9 + k11)/2)*k7*x2 + (-1)*k12*k8*x3)/k12, (1*k12*(k9 + k11)/2*k7*x2 + (-1)*k12*k8*x4)/k12 ]
constraints=[ ]
ID="BIOMD0000000892"
pol=true
mass_bool=false
rev=0
irr=8
def=0
rat=true
desc="interferon and ribavirin."
stoichMatrix=[ [ 1,-1,0, 0,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0], [ 0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0], [ 0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0], [ 0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,1 ] ]
paramValues=[ 1,199//100,36000000,1//100,9//40000000,1,29//10,6,0,1//2,4//5,1 ]
paramNames=[ "s","r","k","d1","alpha","d2","beta","d3","nr","c","n1","compartment" ]
speciesNames=[ "T","I","VI","VNI" ]
