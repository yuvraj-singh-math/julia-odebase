# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k9*k1*x1*(1 - k2*x1) + (-1)*k9*x1*x2)/k9, (1*k9*k4*x1*x2 + (-1)*k9*k3*x2 + 1*k9*k7*x2*x3)/k9, (1*k9*k5 + 1*k9*k8*x1*x3 + (-1)*k9*k6*x3)/k9 ]
constraints=[ ]
ID="BIOMD0000000783"
pol=true
mass_bool=false
rev=0
irr=8
def=0
rat=true
desc="Dong2014 - Mathematical modeling on helper t cells in a tumor immune system"
stoichMatrix=[ [ 1,-1,0, 0,0,0,0, 0], [ 0, 0,1,-1,1,0,0, 0], [ 0, 0,0, 0,0,1,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0,0,0,0, 0], [ 0, 0,1,-1,1,0,0, 0], [ 0, 0,0, 0,0,1,1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0], [ 0,0,0,0,0,0,0,1 ] ]
paramValues=[ 409//250,1//500,3743//10000,1//25,19//50,11//200,1//100,1//500,1 ]
paramNames=[ "alpha","beta","delta_1","omega_1","sigma_2","delta_2","rho","omega_2","compartment" ]
speciesNames=[ "x_Tumor_Cells","y_Effector_Cells","z_Helper_T_Cells" ]
