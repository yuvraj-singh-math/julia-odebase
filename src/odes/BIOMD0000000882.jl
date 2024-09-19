# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k6*k5 + (-1)*k6*(k2*x1*x2 + k3*x1))/k6, (1*k6*(k2*x1*x2 + k4*x3) + (-1)*k6*k1*x1*x2)/k6, (1*k6*(k1*x1*x2 + k3*x1) + (-1)*k6*k4*x3)/k6 ]
constraints=[ ]
ID="BIOMD0000000882"
pol=true
mass_bool=false
rev=0
irr=6
def=0
rat=true
desc="Munz2009 - Zombie SIZRC"
stoichMatrix=[ [ 1,0,-1,0, 0, 0], [ 0,1, 0,0, 0,-1], [ 0,0, 0,1,-1, 0 ] ]
reconStoichMatrix=[ [ 1,0,-1,0, 0, 0], [ 0,1, 0,0, 0,-1], [ 0,0, 0,1,-1, 0 ] ]
kineticMatrix=[ [ 0,0,1,0,0,0], [ 0,0,0,0,0,1], [ 0,0,0,0,1,0 ] ]
paramValues=[ 1//200,19//2000,1//10000,1//10000,1//20,1 ]
paramNames=[ "alpha","beta","delta","zeta","p","compartment" ]
speciesNames=[ "Susceptible","Zombie","Removal" ]
