# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k11*(k1*x1*(1 - k2*x1) + k9*x1*x3) + (-1)*k11*k3*x1*x2)/k11, (1*k11*(k4*x2*(1 - k5*x2) + k6*x1*x2) + (-1)*k11*k10*x2*x3)/k11, (1*k11*k7 + (-1)*k11*k8*x3)/k11 ]
constraints=[ ]
ID="BIOMD0000001038"
pol=true
mass_bool=false
rev=0
irr=6
def=0
rat=true
desc="Alharbi2019 - Tumor-normal-vitamins model (TNVM) of the effects of vitamins on delaying the growth of tumor cells"
stoichMatrix=[ [ 1,-1,0, 0,0, 0], [ 0, 0,1,-1,0, 0], [ 0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0,0, 0], [ 0, 0,1,-1,0, 0], [ 0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0], [ 0,0,0,1,0,0], [ 0,0,0,0,0,1 ] ]
paramValues=[ 539//1250,299//100000000,9817//10000,2213//5000,2//5,2291//10000,561//625,9611//10000,443//2000,199//400,1 ]
paramNames=[ "r","beta1","gamma","alpha1","alpha2","beta2","k1","k2","c1","c2","Whole_organism" ]
speciesNames=[ "Normal_cells","Tumor_cells","Vitamins" ]
