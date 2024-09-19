# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[((-1)*k14*k3*x3*x1 + 1*k14*k8*x4 + (-1)*k14*(k1 + k10)*x1 + 1*k9*x2/k2)/k14, (1*k10*x1*k2 + (-1)*k15*k9*x2)/k15, ((-1)*k14*k3*x3*x1 + 1*k14*k8*x4 + 1*k14*k7 + (-1)*k14*k6*x3)/k14, (1*k14*k3*x3*x1 + (-1)*k14*(k8 + k5)*x4)/k14 ]
constraints=[ ]
ID="BIOMD0000000765"
pol=true
mass_bool=false
rev=0
irr=9
def=1
rat=true
desc="Mager2005 - Quasi-equilibrium pharmacokinetic model for drugs exhibiting target-mediated drug disposition"
stoichMatrix=[ [ -1,1, 0,-1,1,0, 0,0, 0], [ 0,0, 0, 0,0,1,-1,0, 0], [ -1,1, 0, 0,0,0, 0,1,-1], [ 1,0,-1, 0,0,0, 0,0, 0 ] ]
reconStoichMatrix=[ [ -1,1, 0,-1,1,0, 0,0, 0], [ 0,0, 0, 0,0,1,-1,0, 0], [ -1,1, 0, 0,0,0, 0,1,-1], [ 1,0,-1, 0,0,0, 0,0, 0 ] ]
kineticMatrix=[ [ 1,0,0,1,0,0,0,0,0], [ 0,0,0,0,0,0,1,0,0], [ 1,0,0,0,0,0,0,0,1], [ 0,0,1,0,0,0,0,0,0 ] ]
paramValues=[ 1,10,1//10,1,0,283//500,0,1//10,0,0,400,400,10,1,1 ]
paramNames=[ "k_el","V_c","k_on","K_D","k_int","k_deg","k_syn","k_off","k_tp","k_pt","C_Concentration","C_tot","ModelValue_1","Central","Peripheral_Tissue" ]
speciesNames=[ "C","A_T","R","RC" ]
