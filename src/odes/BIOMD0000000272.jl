# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[(1*k1*k2*k12 + (-1)*k1*x1*k12 + (-1)*k3*x2*x1*k12 + 1*k4*x3*k12)/k11, ((-1)*k3*x2*x1*k12 + 1*k4*x3*k12 + 1*k5*x4*k12)/k10, (1*k3*x2*x1*k12 + (-1)*k4*x3*k12 + (-1)*k1*x3*k12)/k11, (1*k1*x3*k12 + (-1)*k5*x4*k12 + (-1)*k6*x4*k12 + (-1)*k7*x4*k12)/k12, 1*k6*x4*k12/k12, 1*k7*x4*k12/k10 ]
constraints=[ 1*k10*x2 + 1*k11*x3 + 1*k12*x4 + 1*k12*x5 + 1*k10*x6 - k10*k13 + k11*k14 + k12*k15 ]
ID="BIOMD0000000272"
pol=true
mass_bool=true
rev=0
irr=8
def=1
rat=true
desc="Becker2010_EpoR_AuxiliaryModel"
stoichMatrix=[ [ 1,-1,-1, 1, 0, 0, 0, 0], [ 0, 0,-1, 1, 0, 1, 0, 0], [ 0, 0, 1,-1,-1, 0, 0, 0], [ 0, 0, 0, 0, 1,-1,-1,-1], [ 0, 0, 0, 0, 0, 0, 1, 0], [ 0, 0, 0, 0, 0, 0, 0, 1 ] ]
reconStoichMatrix=[ [ 1,-1,-1, 1, 0, 0, 0, 0], [ 0, 0,-1, 1, 0, 1, 0, 0], [ 0, 0, 1,-1,-1, 0, 0, 0], [ 0, 0, 0, 0, 1,-1,-1,-1], [ 0, 0, 0, 0, 0, 0, 1, 0], [ 0, 0, 0, 0, 0, 0, 0, 1 ] ]
kineticMatrix=[ [ 0,1,1,0,0,0,0,0], [ 0,0,1,0,0,0,0,0], [ 0,0,0,1,1,0,0,0], [ 0,0,0,0,0,1,1,1], [ 0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0 ] ]
paramValues=[ 164683//5000000,76,114701//50000000000,339973//50000000,1101//100000,317871//100000000,82021//5000000,999293//1000,0,1,1,1,999293//1000,0,0 ]
paramNames=[ "kt","Bmax_SAv","kon_SAv","koff_SAv","kex_SAv","kdi","kde","SAv_medium","SAv_cells","medium","cellsurface","cell","__cm_k13","__cm_k14","__cm_k15" ]
speciesNames=[ "EpoR","SAv","SAv_EpoR","SAv_EpoRi","dSAvi","dSAve" ]
