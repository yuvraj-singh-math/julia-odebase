# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[(1*k9*((1 + k3*(1 - k4*k2) + 1//2*k4*k6*k2)*x1 + k4*(1 + k3*k2)*x3) + (-1)*k9*(x1*x1 + x1*x2))/k9, (1*k9*x2*x3 + (-1)*k9*(k7 - k5)*x2)/k9, (1*k9*(k3*(1 - k4*k2) + k4*k6*k2)*x1 + (-1)*k9*(k8 - (k3*(1 + k4*k2) + k4*(1 + 1//2*k6*k2)))*x3)/k9 ]
constraints=[ ]
ID="BIOMD0000000894"
pol=true
mass_bool=false
rev=0
irr=6
def=0
rat=true
desc="Bose2011 - Noise-assisted interactions of tumor and immune cells"
stoichMatrix=[ [ 1,-1,0, 0,0, 0], [ 0, 0,1,-1,0, 0], [ 0, 0,0, 0,1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0,0, 0], [ 0, 0,1,-1,0, 0], [ 0, 0,0, 0,1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0,0], [ 0,0,0,1,0,0], [ 0,0,0,0,0,1 ] ]
paramValues=[ 1,3//10,1,21//10,1//100,6//5,3//50,20,1 ]
paramNames=[ "t","tau","R","Dx","Dy","Dz","p","mu","compartment" ]
speciesNames=[ "x","y","z" ]
