# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20","k21","k22"])
polRing,(x1,x2,x3,x4,x5,x6,x7)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7"])
chemSystem=[(-(k17 + k1))*x1 + k18*x2 + k2*k13*x3, k17*x1 - (k18 + k1)*x2 + k2*k13*x4, k1/k13*x1 - (k2 + k17 + k3)*x3 + k18*x4 + k4/(k19*k13/(1 + k13))*x5, k1/k13*x2 + k17*x3 - (k18 + k2)*x4, k3*k19*k13/(1 + k13)*x3 - (k4 + k20)*x5 + k21*x6 + k6*k12/k9*x7 - k5*(k8 - x7)*x5, k20*x5 - k21*x6 + k7*k12/k9*x7, k5/(k12/k9)*(k8 - x7)*x5 - (k6 + k7)*x7 ]
constraints=[ ]
ID="BIOMD0000000946"
pol=true
mass_bool=false
rev=0
irr=0
def=0
rat=true
desc="Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells"
stoichMatrix=[ [ ], [ ], [ ], [ ], [ ], [ ], [ ] ]
reconStoichMatrix=[ [ ], [ ], [ ], [ ], [ ], [ ], [ ] ]
kineticMatrix=[ [ ], [ ], [ ], [ ], [ ], [ ], [ ] ]
paramValues=[ 6987//5000000000,85551//1000000,2211//100000,15783//2000000,7617//20000000,27761//500000,15639//100000000000,22493//250,829,6018000000000000//200003009,400000000000000000000//200003009,326,3009//200000000,72592125//200003009,326//829,10,15599//100000000,29553//100000000,24125,12913//100000000,15789//50000000,1 ]
paramNames=[ "k_mi","k_mo","k_i","k_e","k_b","k_dl","k_dh","B_T","V_c","V_e","V_m","V_n","v0","v1","v2","D","k_om","k_cm","alpha","k_oc","k_cc","breast_cancer_cell" ]
speciesNames=[ "L_m","H_m","L_e","H_e","L_c","H_c","L_n" ]
