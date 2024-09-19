# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20","k21","k22"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k21*2060//365 + (-1)*k21*1/(2*365)*x1 + (-1)*k21*45685/(439197*30)*x1*x2)/k21, (1*k21*45685/(439197*30)*x1*x2 + (-1)*k21*45682/(439197*30)*x2 + (-1)*k21*1/(2*365)*x2)/k21, (1*k22*237//10*k20//365000 + (-1)*k22*1/(346//5*365)*x3 + (-1)*16/(108*1000000*1825//2)*x3*x2)/k22, (1*16/(108*1000000*1825//2)*x3*x2 + (-1)*k22*6/(108*1000000*1825//2)*x4 + (-1)*k22*1/(346//5*365)*x4)/k22 ]
constraints=[ ]
ID="BIOMD0000000716"
pol=true
mass_bool=false
rev=0
irr=10
def=0
rat=true
desc="Lee2018 - Avian human bilinear incidence (BI) model"
stoichMatrix=[ [ 1,-1,-1, 0, 0,0, 0, 0, 0, 0], [ 0, 0, 1,-1,-1,0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0,1,-1,-1, 0, 0], [ 0, 0, 0, 0, 0,0, 0, 1,-1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,-1, 0, 0,0, 0, 0, 0, 0], [ 0, 0, 1,-1,-1,0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0,1,-1,-1, 0, 0], [ 0, 0, 0, 0, 0,0, 0, 1,-1,-1 ] ]
kineticMatrix=[ [ 0,1,1,0,0,0,0,0,0,0], [ 0,0,0,1,1,0,0,0,0,0], [ 0,0,0,0,0,0,1,1,0,0], [ 0,0,0,0,0,0,0,0,1,1 ] ]
paramValues=[ 281441,171977,412//73,40758549//3650000,1//730,1//25258,1//6159375000,9137//2635182,9137//5270364,180000,120000,850,1//16425000000,22841//6587955,0,0,3//1000,0,0,171977,1,1 ]
paramNames=[ "Nb","Nh","LAMBDA_b","LAMBDA_h","mu_b","mu_h","beta_bh","beta_b","beta_v","H_b","H_bh","H_v","d","delta_b","p","phi","gamma_b","c","q","ModelValue_1","compartment","Human_Population" ]
speciesNames=[ "S_b","I_b","S_h","I_a" ]
