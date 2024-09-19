# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[(-(k1 + k2))*x1 + k7*x2 + k3*k12/(k13*400000)*1//1000*x3, k1*x1 - k7*x2, k2*k12/(k13*400000)*1//1000*x1 - (k3 + k4)*x3 + k5*x4 - k8*(k9 - x5)*x3 + k14/k13*k6*x5, k4*x3 - k5*x4, k8*k14/k13*(k9 - x5)*x3 - k6*x5 ]
constraints=[ ]
ID="BIOMD0000000945"
pol=true
mass_bool=false
rev=0
irr=0
def=0
rat=true
desc="Evans2004 - Cell based mathematical model of topotecan"
stoichMatrix=[ [ ], [ ], [ ], [ ], [ ] ]
reconStoichMatrix=[ [ ], [ ], [ ], [ ], [ ] ]
kineticMatrix=[ [ ], [ ], [ ], [ ], [ ] ]
paramValues=[ 289//10000,309//1000000,507//500,26553//1000000,18637//100000,44489//10000,53//500000,85341//100000000,289//10,5000//829,326//829,2000000000000,829,326,10,1 ]
paramNames=[ "k_0_m","k_i","k_e","k_o_c","k_c_c","k_d","k_c_m","k_b","B_T","v_1","v_2","V_m","V_c","V_n","D","human_lymphoma_cells" ]
speciesNames=[ "L_m","H_m","L_c","H_c","L_n" ]
