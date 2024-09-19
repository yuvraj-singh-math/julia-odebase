# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[((-1)*k14*k4*x1*x2 + 1*k14*k1*x1*(k13*x5 + 1))/k14, (1*k14*(k3*x3 + k2*x4) + (-1)*k14*(k3*x3*x2 + k2*x4*x2 + k5*x2*x1))/k14, (1*k14*(k6*x1 + k7*x2) + (-1)*k14*(k6*x1*x3 + k7*x2*x3 + k8*x3*x1))/k14, (1*k14*(k9 + k9*x3*x4) + (-1)*k14*(k9*x3 + k9*x4 + k10*x4*x2))/k14, (1*k14*(k11*k12*x5 + k11*x3*x5*x5) + (-1)*k14*(k11*k12*x5*x5 + k11*x3*x5))/k14 ]
constraints=[ ]
ID="BIOMD0000000745"
pol=true
mass_bool=false
rev=0
irr=10
def=0
rat=true
desc="Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model"
stoichMatrix=[ [ -1,1,0, 0,0, 0,0, 0,0, 0], [ 0,0,1,-1,0, 0,0, 0,0, 0], [ 0,0,0, 0,1,-1,0, 0,0, 0], [ 0,0,0, 0,0, 0,1,-1,0, 0], [ 0,0,0, 0,0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ -1,1,0, 0,0, 0,0, 0,0, 0], [ 0,0,1,-1,0, 0,0, 0,0, 0], [ 0,0,0, 0,1,-1,0, 0,0, 0], [ 0,0,0, 0,0, 0,1,-1,0, 0], [ 0,0,0, 0,0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0,0,0], [ 0,0,0,0,0,1,0,0,0,0], [ 0,0,0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,0,0,1 ] ]
paramValues=[ 11//250,1//5,199//1000,187//1000,361//500,101//1000,9//200,1723//1000,27//1000,911//1000,743//1000,71//250,1523//1000,1 ]
paramNames=[ "g","an","av","ut","ui","at","ai","uv","beta","un","gamma","delta","rho","tumor" ]
speciesNames=[ "T","I","V","N","H" ]
