# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3,x4,x5,x6,x7)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7"])
chemSystem=[((-1)*k11*k1*x5*x1 + (-1)*k11*(k2*x6*x1 - k3*x4))/k11, (1*k11*k1*x5*x1 + (-1)*k11*(k5*x2 + k2*x6*x2) + (-1)*k11*k4*x2)/k11, (1*k11*(k5*x2 + k2*x6*x2) + (-1)*k11*k4*x3)/k11, 1*k11*(k2*x6*x1 - k3*x4)/k11, (1*k11*(k6*x2 + (1 - k7)*k6*x3) + (-1)*k11*k8*x5)/k11, (1*k11*k9*k6*(x2 + x3) + (-1)*k11*k8*x6)/k11 ]
constraints=[ x7 - x1/k10 ]
ID="BIOMD0000001021"
pol=true
mass_bool=false
rev=1
irr=8
def=0
rat=true
desc="Lavigne2021 - Non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection"
stoichMatrix=[ [ -1,-1, 0, 0, 0,0,0, 0, 0], [ 1, 0,-1,-1, 0,0,0, 0, 0], [ 0, 0, 1, 0,-1,0,0, 0, 0], [ 0, 1, 0, 0, 0,0,0, 0, 0], [ 0, 0, 0, 0, 0,1,0,-1, 0], [ 0, 0, 0, 0, 0,0,1, 0,-1], [ 0, 0, 0, 0, 0,0,0, 0, 0 ] ]
reconStoichMatrix=[ [ -1,-1, 1, 0, 0, 0,0,0, 0, 0], [ 1, 0, 0,-1,-1, 0,0,0, 0, 0], [ 0, 0, 0, 1, 0,-1,0,0, 0, 0], [ 0, 1,-1, 0, 0, 0,0,0, 0, 0], [ 0, 0, 0, 0, 0, 0,1,0,-1, 0], [ 0, 0, 0, 0, 0, 0,0,1, 0,-1], [ 0, 0, 0, 0, 0, 0,0,0, 0, 0 ] ]
kineticMatrix=[ [ 1,1,0,0,0,0,0,0,0,0], [ 0,0,0,1,1,0,0,0,0,0], [ 0,0,0,0,0,1,0,0,0,0], [ 0,0,1,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,1,0], [ 0,0,0,0,0,0,0,0,0,1], [ 0,0,0,0,0,0,0,0,0,0 ] ]
paramValues=[ 1//2000000000,1//2000000000,1,4,2,2400,9//10,14,1,400000000,1 ]
paramNames=[ "Beta","Phi","Rho","Delta","k","p","f","c","Pi","Metabolite_0","whole_organism" ]
speciesNames=[ "Target_cells","Infected_cells","Infected_cells_antiviral","Refractory_cells","Virions","IFN","Fraction_target_cells_remaining" ]
