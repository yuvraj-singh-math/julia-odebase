# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20","k21"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[((-1)*k15*x1*(1 - k6*(k14*k9 + k14*(1 - (k9 + k10)) + k14*k10)/k5)*k3 + (-1)*k15*x1*(1 - (1 - k6*(k14*k9 + k14*(1 - (k9 + k10)) + k14*k10)/k5)*k3))/k19, (1*k15*x1*(1 - k6*(k14*k9 + k14*(1 - (k9 + k10)) + k14*k10)/k5)*k3 + (-1)*k14*k9*x2 + (-1)*k14*k10*x2 + (-1)*k14*(1 - (k9 + k10))*x2)/k20, (1*k14*k10*x2 + (-1)*k16*x3)/k21 ]
constraints=[ ]
ID="BIOMD0000000321"
pol=true
mass_bool=false
rev=0
irr=6
def=0
rat=true
desc="Grange2001 - L Dopa PK model"
stoichMatrix=[ [ -1,-1, 0, 0, 0, 0], [ 1, 0,-1,-1,-1, 0], [ 0, 0, 0, 1, 0,-1 ] ]
reconStoichMatrix=[ [ -1,-1, 0, 0, 0, 0], [ 1, 0,-1,-1,-1, 0], [ 0, 0, 0, 1, 0,-1 ] ]
kineticMatrix=[ [ 1,1,0,0,0,0], [ 0,0,1,1,1,0], [ 0,0,0,0,0,1 ] ]
paramValues=[ 72101//345000,72101//82800,6//25,10699//100000,207//250,13//100,823//1000,21//100,69//100,1//10,56787//100000,17283//100000,823//10000,823//1000,211//100,3//250,404,1//4,1,62//125,49//250 ]
paramNames=[ "F_b","F_H","F_G","CL_H","Q","f_H","CL_dopa","f_rest","f_AADC","f_COMT","CL_AADC","CL_rest","CL_COMT","CL_dopa0","ka_b","CL_OMD","L_Dopa_per_kg_rat","rat_body_mass","gut","Vdopa","V_3_OMD" ]
speciesNames=[ "A_dopa","C_dopa","C_OMD" ]
