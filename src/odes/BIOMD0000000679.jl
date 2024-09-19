# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[k5*x1 + k6*k7*x2*(1 - k8*(x2 + x3)) - k10*x2, (1 - k5)*x1 + k6*k7*x3*(1 - k8*(x2 + x3)) - k10*x3, k9*x2 - k11*x4 ]
constraints=[ x1 - k1*x4^3 + k2*x4^2 + k3*x4 + k4 ]
ID="BIOMD0000000679"
pol=true
mass_bool=false
rev=0
irr=8
def=0
rat=true
desc="Waugh2006 - Diabetic Wound Healing - Macrophage Dynamics"
stoichMatrix=[ [ 0,0,0, 0,0, 0,0, 0], [ 1,1,0,-1,0, 0,0, 0], [ 0,0,1, 0,1,-1,0, 0], [ 0,0,0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 0,0,0, 0,0, 0,0, 0], [ 1,1,0,-1,0, 0,0, 0], [ 0,0,1, 0,1,-1,0, 0], [ 0,0,0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,0,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0], [ 0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,1 ] ]
paramValues=[ -247//100,1097//50,641//100,7//4,4//5,1//20,693//1000,1//500,7//100,1//5,91//10,1 ]
paramNames=[ "tau1","tau2","tau3","tau4","alpha","k1","k2","k3","k4","d1","d2","COMpartment" ]
speciesNames=[ "K_T","phi_I","phi_R","T" ]
