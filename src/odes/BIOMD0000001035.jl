# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k12*k1*x1*(1 - (x1 + x2)) + (-1)*k12*k2*x1*x3 + (-1)*k12*(k3*x1*x4 + k4*x1))/k12, (1*k12*k2*x1*x3 + (-1)*k12*(k5*x2*x4 + x2))/k12, ((-1)*k12*k2*x1*x3 + 1*k12*k11*x2 + (-1)*k12*(k6*x3*x4 + k7*x3))/k12, (1*k12*(k8*x2*x4 + k9*x1*x4) + (-1)*k12*k10*x4)/k12 ]
constraints=[ ]
ID="BIOMD0000001035"
pol=true
mass_bool=false
rev=0
irr=8
def=1
rat=true
desc="Al-Tuwairqi2020 - Dynamics of cancer virotherapy with immune response"
stoichMatrix=[ [ 1,-1,-1, 0,0, 0,0, 0], [ 0, 1, 0,-1,0, 0,0, 0], [ 0,-1, 0, 0,1,-1,0, 0], [ 0, 0, 0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,-1, 0,0, 0,0, 0], [ 0, 1, 0,-1,0, 0,0, 0], [ 0,-1, 0, 0,1,-1,0, 0], [ 0, 0, 0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,1,0,0,0,0,0], [ 0,0,0,1,0,0,0,0], [ 0,1,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,1 ] ]
paramValues=[ 9//25,1//2,9//25,639//5000,12//25,4//25,1//5,3//5,29//100,4//25,2,1 ]
paramNames=[ "r_1","a","h_1","d_1","c","h_2","e","m_1","m_2","n","b","Whole_organism" ]
speciesNames=[ "uninfected_cancer_cells","infected_cancer_cells","free_virus","immune_cells" ]
