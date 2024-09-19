# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(1*k7*k1*x1*(1 - k2*x1) + (-1)*k7*k3*x1*x2)/k7, 1*k7*(k4*x2*(1 - k5*x2) + k6*x1*x2)/k7 ]
constraints=[ ]
ID="BIOMD0000001037"
pol=true
mass_bool=false
rev=0
irr=3
def=0
rat=true
desc="Alharbi2019 - Tumor-normal model (TNM) of the development of tumor cells and their impact on normal cell dynamics"
stoichMatrix=[ [ 1,-1,0], [ 0, 0,1 ] ]
reconStoichMatrix=[ [ 1,-1,0], [ 0, 0,1 ] ]
kineticMatrix=[ [ 0,1,0], [ 0,0,0 ] ]
paramValues=[ 539//1250,299//100000000,4657//5000,2213//5000,2//5,11891//10000,1 ]
paramNames=[ "r","beta1","gamma","alpha1","alpha2","beta2","Whole_organism" ]
speciesNames=[ "Normal_cells","Tumor_cells" ]
