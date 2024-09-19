# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5)=rational_function_field(QQ,["k1","k2","k3","k4","k5"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(1*k5*k1*x1*x2 + (-1)*k5*k2*x1)/k5, (1*k5*k3*x2 + (-1)*k5*k4*x1*x2)/k5 ]
constraints=[ ]
ID="BIOMD0000001024"
pol=true
mass_bool=false
rev=0
irr=4
def=0
rat=true
desc="Chaudhury2020 - Lotka-Volterra mathematical model of CAR-T cell and tumour kinetics"
stoichMatrix=[ [ 1,-1,0, 0], [ 0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0], [ 0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0], [ 0,0,0,1 ] ]
paramValues=[ 9//5000,4//25,3//20,3//20000,1 ]
paramNames=[ "rho","k_E","g","d","Whole_organism_blood" ]
speciesNames=[ "Expanding_CAR_T_cells","Tumor_cells" ]
