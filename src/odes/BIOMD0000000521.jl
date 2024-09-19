# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(-k9)*x1, k4*x2*(1 - (x2 + x3 + x4)/k10) + k6*x4 - k5*x2 - k8*x1*k9*x2, k5 - k8*x1*k9*x3, k8*x1*k9*x3 - k6*x4 - k7*x4 ]
constraints=[ ]
ID="BIOMD0000000521"
pol=true
mass_bool=false
rev=0
irr=0
def=0
rat=true
desc="Ribba2012 - Low-grade gliomas, tumour growth inhibition model"
stoichMatrix=[ [ ], [ ], [ ], [ ] ]
reconStoichMatrix=[ [ ], [ ], [ ], [ ] ]
kineticMatrix=[ [ ], [ ], [ ], [ ] ]
paramValues=[ 4833//100,713//100,206//5,121//1000,59//20000,31//10000,87//10000,729//1000,6//25,100,1,1 ]
paramNames=[ "Pstar","P0","Q0","lambda_P","k_PQ","k_Qp_P","delta_QP","gamma","KDE","K","plama","tissue" ]
speciesNames=[ "C","P","Q","Qp" ]
