# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k10*k2*x2 + (-1)*k10*k3*k1*x1 + 1*k10*k1*x3)/k10, ((-1)*k10*k2*x2 + 1*k10*k1*x4 + (-1)*k10*k3*k1*x2)/k10, (1*k10*k3*k1*x1 + (-1)*k10*k1*x3 + 1*k10*k2*x4 + (-1)*k10*k5*k2*x3)/k10, ((-1)*k10*k1*x4 + 1*k10*k3*k1*x2 + (-1)*k10*k2*x4 + 1*k10*k5*k2*x3)/k10 ]
constraints=[ 1*k10*x1 + 1*k10*x2 + 1*k10*x3 + 1*k10*x4 - k10*k11 ]
ID="BIOMD0000000854"
pol=true
mass_bool=true
rev=0
irr=7
def=0
rat=true
desc="Gray2016 - The Akt switch model"
stoichMatrix=[ [ 1,-1, 1, 0, 0, 0, 0], [ -1, 0, 0, 1,-1, 0, 0], [ 0, 1,-1, 0, 0, 1,-1], [ 0, 0, 0,-1, 1,-1, 1 ] ]
reconStoichMatrix=[ [ 1,-1, 1, 0, 0, 0, 0], [ -1, 0, 0, 1,-1, 0, 0], [ 0, 1,-1, 0, 0, 1,-1], [ 0, 0, 0,-1, 1,-1, 1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0,0], [ 1,0,0,0,1,0,0], [ 0,0,1,0,0,0,1], [ 0,0,0,1,0,1,0 ] ]
paramValues=[ 11//20,7//20,7//500,23//1000,11//5,0,1,0,0,1,1 ]
paramNames=[ "kin","koff","alpha1","alpha100","beta1","P_Perc","Akt_Total","Pp_Perc","Pc_Perc","compartment","__cm_k11" ]
speciesNames=[ "Ac","Pc","Ap","Pp" ]
