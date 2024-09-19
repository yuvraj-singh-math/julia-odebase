# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[((-1)*k18*k4*x4*x1 + (-1)*k18*k2*(1 - x3/k3))/k18, (1*k18*k2*(1 - x3/k3) + (-1)*k18*k16*(1 - k17)*x4*x2)/k18, 1*k18*k2*(1 - x3/k3)/k18, (1*k18*k4*x4*x1 + 1*k18*k16*(1 - k17)*x4*x2 + (-1)*k18*k5*x4)/k18, 1*k18*k5*x4/k18 ]
constraints=[ 1*k18*x1 + 1*k18*x2 + 1*k18*x4 + 1*k18*x5 - k18*k19 ]
ID="BIOMD0000000851"
pol=true
mass_bool=false
rev=0
irr=4
def=0
rat=true
desc="Ho2019 - Mathematical models of transmission dynamics and vaccine strategies in Hong Kong during the 2017-2018 winter influenza season (Simple)"
stoichMatrix=[ [ -1,-1, 0, 0], [ 0, 1,-1, 0], [ 0, 1, 0, 0], [ 1, 0, 1,-1], [ 0, 0, 0, 1 ] ]
reconStoichMatrix=[ [ -1,-1, 0, 0], [ 0, 1,-1, 0], [ 0, 1, 0, 0], [ 1, 0, 1,-1], [ 0, 0, 0, 1 ] ]
kineticMatrix=[ [ 1,1,0,0], [ 0,0,1,0], [ 0,0,0,0], [ 0,0,0,1], [ 0,0,0,0 ] ]
paramValues=[ 127,31//2000,231//2000,6879//2500,2659//1250,9//20,75669//50000,329//100,2587//2000,12607//10000,4712//5283,565//10566,2//1761,0,5283//5000,6879//2500,9//20,1,10001//10000 ]
paramNames=[ "alpha","r","A","beta","gamma","w","k","T","R_0","R_0_x","fraction_S","fraction_V","fraction_I","fraction_R","fraction_total","ModelValue_3","ModelValue_5","compartment","__cm_k19" ]
speciesNames=[ "S","V","V_e","I","R" ]
