# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[(-1)*k7*(k1*k3*x3*x1 + k2*k4*x2*x1)/k8/k7, (1*k7*(k1*k3*x3*x1 + k2*k4*x2*x1)/k8 + (-1)*k7*k5*x2)/k7, (1*k7*k5*x2 + (-1)*k7*k6*x3)/k7, 1*k7*k6*x3/k7, 0 ]
constraints=[ 1*k7*x1 + 1*k7*x2 + 1*k7*x3 + 1*k7*x4 - k7*k9 ]
ID="BIOMD0000000970"
pol=true
mass_bool=false
rev=0
irr=3
def=0
rat=true
desc="Hou2020 - SEIR model of COVID-19 transmission in Wuhan"
stoichMatrix=[ [ -1, 0, 0], [ 1,-1, 0], [ 0, 1,-1], [ 0, 0, 1], [ 0, 0, 0 ] ]
reconStoichMatrix=[ [ -1, 0, 0], [ 1,-1, 0], [ 0, 1,-1], [ 0, 0, 1], [ 0, 0, 0 ] ]
kineticMatrix=[ [ 1,0,0], [ 0,1,0], [ 0,0,1], [ 0,0,0], [ 0,0,0 ] ]
paramValues=[ 6,18,1//25,1//50,7//50,6//125,1,11081000,11081000 ]
paramNames=[ "r_1","r_2","beta_1","beta_2","alpha","gamma","Wuhan","Total_Population","__cm_k9" ]
speciesNames=[ "Susceptible","Exposed","Infected","Recovered","Total_Population" ]
