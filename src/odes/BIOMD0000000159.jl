# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k8*k1*k2 + (-1)*k8*k3*x1 + (-1)*k8*k4*x2*x1)/k8, (1*k8*k7*x3 + (-1)*k8*k6*x2)/k8, (1*k8*k5*x1*k2 + (-1)*k8*k7*x3)/k8 ]
constraints=[ ]
ID="BIOMD0000000159"
pol=true
mass_bool=false
rev=1
irr=5
def=0
rat=true
desc="Zatorsky2006_p53_Model1"
stoichMatrix=[ [ 1,-1,-1,0, 0, 0], [ 0, 0, 0,0, 1,-1], [ 0, 0, 0,1,-1, 0 ] ]
reconStoichMatrix=[ [ 1,-1,-1,0, 0, 0,0], [ 0, 0, 0,0, 1,-1,1], [ 0, 0, 0,1,-1, 0,0 ] ]
kineticMatrix=[ [ 0,1,1,0,0,0,0], [ 0,0,0,0,0,1,0], [ 0,0,0,0,1,0,0 ] ]
paramValues=[ 3//10,1,0,16//5,2//5,1//10,1//10,1 ]
paramNames=[ "beta_x","psi","alpha_x","alpha_xy","beta_y","alpha_y","alpha_0","compartment" ]
speciesNames=[ "x","y","y0" ]
