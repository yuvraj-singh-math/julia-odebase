# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k11*(k1 + k2*x1) + (-1)*k11*(k4*x1 + k5*x4*x1 + k2*x1*(x1 + x2 + x3)/k3))/k11, (1*k11*k5*x4*x1 + (-1)*k11*(k4*x2 + k6*x2))/k11, (1*k11*k6*x2 + (-1)*k11*k7*x3)/k11, (1*k11*k9*k7*x3 + (-1)*k11*(k5*x4*x1 + k8*x4))/k11 ]
constraints=[ ]
ID="BIOMD0000000874"
pol=true
mass_bool=false
rev=0
irr=8
def=0
rat=true
desc="Perelson1993 - HIVinfection_CD4Tcells_ModelA"
stoichMatrix=[ [ 1,-1,0, 0,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0], [ 0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0], [ 0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0], [ 0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,1 ] ]
paramValues=[ 10,3//100,1500,1//50,3//125000,3//1000,6//25,12//5,1000,1000,1 ]
paramNames=[ "s","r","T_max","mu_T","k_1","k_2","mu_b","mu_V","N","T_tot","COMpartment" ]
speciesNames=[ "T","T_1","T_2","V" ]
