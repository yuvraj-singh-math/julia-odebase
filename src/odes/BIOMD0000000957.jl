# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5)=rational_function_field(QQ,["k1","k2","k3","k4","k5"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(-1)*k4*k1*x2*x1/k4, (1*k4*k1*x2*x1 + (-1)*k4*k3*x2 + (-1)*k4*k2*x2)/k4, 1*k4*k3*x2/k4, 1*k4*k2*x2/k4 ]
constraints=[ 1*k4*x1 + 1*k4*x2 + 1*k4*x3 + 1*k4*x4 - k4*k5 ]
ID="BIOMD0000000957"
pol=true
mass_bool=false
rev=0
irr=3
def=0
rat=true
desc="Roda2020 - SIR model of COVID-19 spread in Wuhan"
stoichMatrix=[ [ -1, 0, 0], [ 1,-1,-1], [ 0, 1, 0], [ 0, 0, 1 ] ]
reconStoichMatrix=[ [ -1, 0, 0], [ 1,-1,-1], [ 0, 1, 0], [ 0, 0, 1 ] ]
kineticMatrix=[ [ 1,0,0], [ 0,1,1], [ 0,0,0], [ 0,0,0 ] ]
paramValues=[ 209//1000000000,909//1000,1//10,1,5999815 ]
paramNames=[ "beta","rho","mu","Wuhan","__cm_k5" ]
speciesNames=[ "Susceptible","Infected","Recovered","Confirmed" ]
