# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k8*k7*x1*k1 + (-1)*k8*k3*x2*x1)/k8, (1*k8*k6*x3 + (-1)*k8*k5*x2)/k8, (1*k8*k4*x1*k1 + (-1)*k8*k6*x3)/k8 ]
constraints=[ ]
ID="BIOMD0000000156"
pol=true
mass_bool=false
rev=1
irr=4
def=0
rat=true
desc="Zatorsky2006_p53_Model5"
stoichMatrix=[ [ 1,-1,0, 0, 0], [ 0, 0,0, 1,-1], [ 0, 0,1,-1, 0 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0, 0,0], [ 0, 0,0, 1,-1,1], [ 0, 0,1,-1, 0,0 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0], [ 0,0,0,0,1,0], [ 0,0,0,1,0,0 ] ]
paramValues=[ 1,0,37//10,3//2,9//10,11//10,2,1 ]
paramNames=[ "psi","alpha_x","alpha_xy","beta_y","alpha_y","alpha_0","Theta","compartment" ]
speciesNames=[ "x","y","y0" ]
