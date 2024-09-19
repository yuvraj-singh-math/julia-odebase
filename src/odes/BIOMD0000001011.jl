# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k6*1//4*k5*(x2 + x3)*x1 + (-1)*k6*1/k3*x1)/k6, (1*k6*k2*x2 + (-1)*k6*k5*x2*x1)/k6, (-1)*k6*(k5*x3*x1 + 1/k1*x3)/k6 ]
constraints=[ ]
ID="BIOMD0000001011"
pol=true
mass_bool=false
rev=0
irr=5
def=0
rat=true
desc="Leon-Triana2020 - CAR T-cell therapy in B-cell acute lymphoblastic leukaemia"
stoichMatrix=[ [ 1,-1,0, 0, 0], [ 0, 0,1,-1, 0], [ 0, 0,0, 0,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0, 0], [ 0, 0,1,-1, 0], [ 0, 0,0, 0,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0], [ 0,0,0,1,0], [ 0,0,0,0,1 ] ]
paramValues=[ 60,3333333333//100000000000,14,9//800000000000,9//200000000000,1 ]
paramNames=[ "tao_B","rho_L","tao_C","rho_C","alpha","compartment" ]
speciesNames=[ "CAR_T_cells","Leukaemic_B_cells","B_cells_healthy" ]
