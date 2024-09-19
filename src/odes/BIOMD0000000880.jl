# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k15*k1*x1*(1 - k4*x1) + (-1)*k15*k8*x1*x2 + (-1)*k15*k13*x1)/k15, (1*k15*k10*(x3 + x4)*x2 + (-1)*k15*k9*x1*x2 + (-1)*k15*k7*x2)/k15, (1*k15*k2*x3*(1 - k5*x3) + (-1)*k15*k11*x3*x2 + 1*k15*k14)/k15, (1*k15*k3*x4*(1 - k6*x4) + (-1)*k15*k12*x4*x2)/k15 ]
constraints=[ ]
ID="BIOMD0000000880"
pol=true
mass_bool=false
rev=0
irr=11
def=0
rat=true
desc="Trisilowati2018 - Optimal control of tumor-immune system interaction with treatment"
stoichMatrix=[ [ 1,-1,-1,0, 0, 0,0, 0,0,0, 0], [ 0, 0, 0,1,-1,-1,0, 0,0,0, 0], [ 0, 0, 0,0, 0, 0,1,-1,1,0, 0], [ 0, 0, 0,0, 0, 0,0, 0,0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,-1,0, 0, 0,0, 0,0,0, 0], [ 0, 0, 0,1,-1,-1,0, 0,0,0, 0], [ 0, 0, 0,0, 0, 0,1,-1,1,0, 0], [ 0, 0, 0,0, 0, 0,0, 0,0,1,-1 ] ]
kineticMatrix=[ [ 0,1,1,0,0,0,0,0,0,0,0], [ 0,0,0,0,1,1,0,0,0,0,0], [ 0,0,0,0,0,0,0,1,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 431//1000,117//500,17//1000,51//50000000000,1//80000,1//2000,13//1250000000,21//500000000,1//1250000000,1//50000,1//50000,1//50000,0,0,1 ]
paramNames=[ "a_1","a_2","a_3","b_1__1","b_2__1","b_3__1","e","alpha_1","alpha_2","beta_1","beta_2","beta_3","u_1","u_2","compartment" ]
speciesNames=[ "T_Tumor_Cells","L_CD8_T_Cells","D_Dendritic_Cells","H_CD4_T_Cells" ]
