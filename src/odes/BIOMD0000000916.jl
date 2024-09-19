# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[(-1)*k6*k3*x1/k6, (1*k6*k3*x1 + (-1)*k6*(k4*x2 - k5*x4) + (-1)*k6*k1*x2)/k6, 1*k6*k2*x4/k6, (1*k6*(k4*x2 - k5*x4) + (-1)*k6*k2*x4)/k6, 1*k6*k1*x2/k6 ]
constraints=[ 1*k6*x1 + 1*k6*x2 + 1*k6*x3 + 1*k6*x4 + 1*k6*x5 - k6*k7 ]
ID="BIOMD0000000916"
pol=true
mass_bool=true
rev=1
irr=3
def=0
rat=true
desc="Kraan199_Kinetics of Cortisol Metabolism and Excretion."
stoichMatrix=[ [ -1, 0, 0, 0], [ 1,-1, 0,-1], [ 0, 0, 1, 0], [ 0, 1,-1, 0], [ 0, 0, 0, 1 ] ]
reconStoichMatrix=[ [ -1, 0, 0, 0, 0], [ 1,-1, 1, 0,-1], [ 0, 0, 0, 1, 0], [ 0, 1,-1,-1, 0], [ 0, 0, 0, 0, 1 ] ]
kineticMatrix=[ [ 1,0,0,0,0], [ 0,1,0,0,1], [ 0,0,0,0,0], [ 0,0,1,1,0], [ 0,0,0,0,0 ] ]
paramValues=[ 18//5,6//5,133//5,6//5,6//5,1,1 ]
paramNames=[ "K1","K2","K3","K4","K5","compartment","__cm_k7" ]
speciesNames=[ "The_FOD_in_the_circulation__X1","The_FOD_in_the_metabolizing_tissues__X4","The_cumulative_FOD_excreted_in_the_non_urinary_pool__X3","The_FOD_in_the_gallbladder___intestinal_lumen__X5","The_cumulative_FOD_excreted_in_the_urine__X2" ]
