# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[(1*k19*k1*x1 + (-1)*k19*(k2*x1*x1 + k3*x1*x3 + k4*x1*x5))/k19, (1*k19*(k5*x1 + k7*x1*x2) + (-1)*k19*k6*x2)/k19, (1*k19*(k8*x1 + k10*x1*x3 + k11*x2*x3) + (-1)*k19*k9*x3)/k19, (1*k19*(k12*x1 + k14*x1*x4 + k15*x2*x4) + (-1)*k19*k13*x4)/k19, (1*k19*k16*x4 + (-1)*k19*(k17*x5 + k18*x1*x5))/k19 ]
constraints=[ ]
ID="BIOMD0000000886"
pol=true
mass_bool=false
rev=0
irr=10
def=0
rat=true
desc="Dubey2008 - Modeling the interaction between avascular cancerous cells and acquired immune response"
stoichMatrix=[ [ 1,-1,0, 0,0, 0,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0,0, 0], [ 0, 0,0, 0,1,-1,0, 0,0, 0], [ 0, 0,0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0,0, 0,0, 0,0, 0], [ 0, 0,1,-1,0, 0,0, 0,0, 0], [ 0, 0,0, 0,1,-1,0, 0,0, 0], [ 0, 0,0, 0,0, 0,1,-1,0, 0], [ 0, 0,0, 0,0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0,0,0], [ 0,0,0,0,0,1,0,0,0,0], [ 0,0,0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 9//50,23//5,101//1000,1//125,3//2,1//5,3//10,7//5,103//2500,3//10,1//20,9//20,3//100,2//5,3//10,7//20,3//10,1//2,1 ]
paramNames=[ "alpha","alpha_0","alpha_1","delta_2","mu_1","mu_10","mu_11","mu_2","mu_20","beta_1","beta_2","mu_3","mu_30","gamma_1","gamma_2","mu_4","mu_40","delta_1","compartment" ]
speciesNames=[ "T","Th","Tc","B","A" ]
