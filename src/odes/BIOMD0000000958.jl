# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8"])
chemSystem=[(-1)*k15*(k1*x3*x1/k13 + k5*k1*x6*x1/k13 + k2*x4*x1/k13)/k15, (1*k15*(k1*x3*x1/k13 + k5*k1*x6*x1/k13 + k2*x4*x1/k13) + (-1)*k15*k6*(1 - k3 - k4)*x2 + (-1)*k15*k6*k4*x2 + (-1)*k15*k6*k3*x2)/k15, (1*k15*k6*k3*x2 + (-1)*k15*k10*x3 + (-1)*k15*k7*x3 + (-1)*k15*k8*x3)/k15, (1*k15*k6*k4*x2 + (-1)*k15*k11*x4 + (-1)*k15*k7*x4 + (-1)*k15*k8*x4)/k15, 1*k15*k6*(1 - k3 - k4)*x2/k15, (1*k15*k7*x4 + 1*k15*k7*x3 + (-1)*k15*k9*x6 + (-1)*k15*k12*x6)/k15, (1*k15*k8*x4 + 1*k15*k8*x3 + 1*k15*k9*x6)/k15, (1*k15*k11*x4 + 1*k15*k10*x3 + 1*k15*k12*x6)/k15 ]
constraints=[ 1*k15*x1 + 1*k15*x2 + 1*k15*x3 + 1*k15*x4 + 1*k15*x5 + 1*k15*x6 + 1*k15*x7 + 1*k15*x8 - k15*k16 ]
ID="BIOMD0000000958"
pol=true
mass_bool=false
rev=0
irr=12
def=0
rat=true
desc="Ndairou2020 - early-stage transmission of dynamics of COVID-19 in Wuhan"
stoichMatrix=[ [ -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 1,-1,-1,-1, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 1, 0, 0, 0,-1,-1,-1, 0, 0], [ 0, 0, 1, 0,-1,-1,-1, 0, 0, 0, 0, 0], [ 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 1, 0, 0, 1, 0,-1,-1], [ 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0], [ 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1 ] ]
reconStoichMatrix=[ [ -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 1,-1,-1,-1, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 1, 0, 0, 0,-1,-1,-1, 0, 0], [ 0, 0, 1, 0,-1,-1,-1, 0, 0, 0, 0, 0], [ 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 1, 0, 0, 1, 0,-1,-1], [ 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0], [ 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0,0,0,0,0,0,0], [ 0,1,1,1,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,1,1,1,0,0], [ 0,0,0,0,1,1,1,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,1,1], [ 0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0 ] ]
paramValues=[ 14//5,153//20,29//50,1//1000,39//25,1//4,47//50,27//100,1//2,7//200,1,17//200,44000,6,1,44000 ]
paramNames=[ "beta","beta_prime","rho1","rho2","l","kappa","gamma_a","gamma_i","gamma_r","delta_i","delta_p","delta_h","N","Confimed_cases","Wuhan","__cm_k16" ]
speciesNames=[ "Susceptible","Exposed","Infectious","Super_spreaders","Asymptomatic","Hospitalised","Recovered","Fatalities" ]
