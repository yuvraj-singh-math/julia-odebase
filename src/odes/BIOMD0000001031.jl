# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5)=rational_function_field(QQ,["k1","k2","k3","k4","k5"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k4*k1*x1 + (-1)*k4*x1*x3)/k4, (1*k4*x1*x3 + (-1)*k4*k5*x2)/k4, (1*k4*k5*x2 + (-1)*k4*(k3*x1*x3 + k2*x3))/k4 ]
constraints=[ ]
ID="BIOMD0000001031"
pol=true
mass_bool=false
rev=0
irr=4
def=0
rat=true
desc="Al-Tuwairqi2020 - Dynamics of cancer virotherapy - Phase I treatment"
stoichMatrix=[ [ 1,-1, 0, 0], [ 0, 1,-1, 0], [ 0, 0, 1,-1 ] ]
reconStoichMatrix=[ [ 1,-1, 0, 0], [ 0, 1,-1, 0], [ 0, 0, 1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0], [ 0,0,1,0], [ 0,0,0,1 ] ]
paramValues=[ 0,3//20,1//50,1,1 ]
paramNames=[ "f","h","m","Whole_organism","__lp_r4_k1" ]
speciesNames=[ "uninfected_cancer_cells","infected_cancer_cells","free_virus" ]
