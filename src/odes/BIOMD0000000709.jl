# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[(1*k14*k1*x1*(1 - x1/k11)*(x1/k12 - 1) + (-1)*k14*k3*x1*x2)/k14, (1*k14*k3*x1*x2 + (-1)*k14*k4*x2 + (-1)*k14*k5*x2)/k14, (1*k13*k6 + (-1)*k7*x2*x3 + (-1)*k13*k8*x3)/k13, (1*k7*x2*x3 + (-1)*k13*k8*x4 + (-1)*k13*k10*x4 + (-1)*k13*k9*x4)/k13, (1*k13*k9*x4 + (-1)*k13*k8*x5)/k13 ]
constraints=[ ]
ID="BIOMD0000000709"
pol=true
mass_bool=false
rev=0
irr=11
def=0
rat=true
desc="Liu2017 - Dynamics of Avian Influenza with Allee Growth Effect"
stoichMatrix=[ [ 1,-1, 0, 0,0, 0, 0, 0, 0, 0, 0], [ 0, 1,-1,-1,0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0,1,-1,-1, 0, 0, 0, 0], [ 0, 0, 0, 0,0, 1, 0,-1,-1,-1, 0], [ 0, 0, 0, 0,0, 0, 0, 0, 0, 1,-1 ] ]
reconStoichMatrix=[ [ 1,-1, 0, 0,0, 0, 0, 0, 0, 0, 0], [ 0, 1,-1,-1,0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0,1,-1,-1, 0, 0, 0, 0], [ 0, 0, 0, 0,0, 1, 0,-1,-1,-1, 0], [ 0, 0, 0, 0,0, 0, 0, 0, 0, 1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0,0,0,0,0,0], [ 0,0,1,1,0,0,0,0,0,0,0], [ 0,0,0,0,0,1,1,0,0,0,0], [ 0,0,0,0,0,0,0,1,1,1,0], [ 0,0,0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 1//200,50000,9//500000000,17123//50000000,1//2500,30,3//500000000,391//10000000,1//10,689//2000,50000,800,1,1 ]
paramNames=[ "r_a","K_a","beta_a","mu_a","delta_a","pi_h","beta_h","mu_h","gamma","delta_h","M_a","m_a","compartment","Avian_population" ]
speciesNames=[ "S_a","I_a","S_h","I_h","R_h" ]
