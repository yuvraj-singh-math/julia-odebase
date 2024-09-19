# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[0, (1*(k9*k2 - x2*(k1 + k3*x4)) + (-1)*((-k6*x3) + k7*x2) + (-1)*(k5*x2 - k4*x4))/k8, 1*((-k6*x3) + k7*x2)/k8, 1*(k5*x2 - k4*x4)/k8 ]
constraints=[ ]
ID="BIOMD0000000460"
pol=true
mass_bool=false
rev=3
irr=0
def=0
rat=true
desc="Liebal2012 - B.subtilis sigB proteolysis model"
stoichMatrix=[ [ -1, 0, 0], [ 1,-1,-1], [ 0, 1, 0], [ 0, 0, 1 ] ]
reconStoichMatrix=[ [ -1, 1, 0, 0, 0, 0], [ 1,-1,-1, 1,-1, 1], [ 0, 0, 1,-1, 0, 0], [ 0, 0, 0, 0, 1,-1 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0], [ 0,1,1,0,1,0], [ 0,0,0,1,0,0], [ 0,0,0,0,0,1 ] ]
paramValues=[ 29//5000000000,100,21//250000,3//25000000000000,1//500000,13//250,17//10000000,1,100 ]
paramNames=[ "kbd","kbs","kbx","kxd","kxs","kzd","kzs","compartment","IPTG" ]
speciesNames=[ "IPTG","sigb","lacz","x" ]
