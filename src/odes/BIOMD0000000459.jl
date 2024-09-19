# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[0, (1*(k9*k2 - k1*x2) + (-1)*(k6*x2 - x3*(k5 + k7*x4)) + (-1)*(k4*x2 - k3*x4))/k8, 1*(k6*x2 - x3*(k5 + k7*x4))/k8, 1*(k4*x2 - k3*x4)/k8 ]
constraints=[ ]
ID="BIOMD0000000459"
pol=true
mass_bool=false
rev=3
irr=0
def=0
rat=true
desc="Liebal2012 - B.subtilis post-transcriptional instability model"
stoichMatrix=[ [ -1, 0, 0], [ 1,-1,-1], [ 0, 1, 0], [ 0, 0, 1 ] ]
reconStoichMatrix=[ [ -1, 1, 0, 0, 0, 0], [ 1,-1,-1, 1,-1, 1], [ 0, 0, 1,-1, 0, 0], [ 0, 0, 0, 0, 1,-1 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0], [ 0,1,1,0,1,0], [ 0,0,0,1,0,0], [ 0,0,0,0,0,1 ] ]
paramValues=[ 41203//2500000,100,108559//100000000000000,932517//10000000000000,26923//200000000000,451769//500000000000,79443//25000000,1,100 ]
paramNames=[ "kbd","kbs","kxd","kxs","kzd","kzs","kzx","compartment","IPTG" ]
speciesNames=[ "IPTG","sigb","lacz","x" ]
