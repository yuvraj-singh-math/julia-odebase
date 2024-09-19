# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k10*k1*x1*(1 - x1/k2) + (-1)*k10*k3*x1*x2 + (-1)*k10*k8*x1)/k10, (1*k10*k9*x2*x3 + (-1)*k10*k4*x2 + (-1)*k10*k5*x1*x2)/k10, (1*k10*k6*x3*(1 - x3/k7) + (-1)*k10*k9*x2*x3)/k10 ]
constraints=[ ]
ID="BIOMD0000000777"
pol=true
mass_bool=false
rev=0
irr=8
def=0
rat=true
desc="Chakrabarty2010 - A control theory approach to cancer remission aided by an optimal therapy"
stoichMatrix=[ [ 1,-1,0, 0, 0,0, 0,-1], [ 0, 0,1,-1,-1,0, 0, 0], [ 0, 0,0, 0, 0,1,-1, 0 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0, 0,0, 0,-1], [ 0, 0,1,-1,-1,0, 0, 0], [ 0, 0,0, 0, 0,1,-1, 0 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0,0,1], [ 0,0,0,1,1,0,0,0], [ 0,0,0,0,0,0,1,0 ] ]
paramValues=[ 9//50,5000000,1101//10000000000,103//2500,1711//5000000000000,49//2000,10000000,1//20,0,1 ]
paramNames=[ "r_1","k_1","alpha_1","d_1","alpha_2","r_2","k_2","mu_1","mu_2","compartment" ]
speciesNames=[ "M_Tumor_Cells","N_CTL","Z_THL" ]
