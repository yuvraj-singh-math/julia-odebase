# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[(1*k11*k2 + (-1)*k11*k1*x1 + (-1)*k11*k3*x1*x2)/k11, (1*k11*k7*x3 + (-1)*k11*k8*x2)/k11, (1*k11*k3*x1*x2 + (-1)*k11*k4*x3 + (-1)*k11*k5*x4*x3)/k11, (1*k11*k9*x5 + (-1)*k11*k10*x4)/k11, (1*k11*k5*x4*x3 + (-1)*k11*k6*x5)/k11 ]
constraints=[ ]
ID="BIOMD0000000707"
pol=true
mass_bool=false
rev=0
irr=10
def=0
rat=true
desc="Revilla2003 - Controlling HIV infection using recombinant viruses"
stoichMatrix=[ [ 1,-1,-1, 0, 0,0, 0,0, 0, 0], [ 0, 0, 0, 0, 0,1, 0,0,-1, 0], [ 0, 0, 1,-1,-1,0, 0,0, 0, 0], [ 0, 0, 0, 0, 0,0, 0,1, 0,-1], [ 0, 0, 0, 0, 1,0,-1,0, 0, 0 ] ]
reconStoichMatrix=[ [ 1,-1,-1, 0, 0,0, 0,0, 0, 0], [ 0, 0, 0, 0, 0,1, 0,0,-1, 0], [ 0, 0, 1,-1,-1,0, 0,0, 0, 0], [ 0, 0, 0, 0, 0,0, 0,1, 0,-1], [ 0, 0, 0, 0, 1,0,-1,0, 0, 0 ] ]
kineticMatrix=[ [ 0,1,1,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,1,0], [ 0,0,0,1,1,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,1], [ 0,0,0,0,0,0,1,0,0,0 ] ]
paramValues=[ 1//100,2,1//250,33//100,1//250,2,50,2,2000,2,1 ]
paramNames=[ "d","lamda","beta","a","alpha","b","k","u","c","q","Plasma" ]
speciesNames=[ "Normal_Th_cells","Pathogen_Virus","Single_Infected_Th_Cells","Recombinant_Virus","Double_Infected_Th_Cells" ]
