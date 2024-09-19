# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[((-1)*k12*k6*x4*x1 + (-1)*k12*k8*x1 + 1*k12*k7)/k12, ((-1)*k12*k4*x3*x2 + (-1)*k12*k2*x2 + 1*k12*k3)/k12, (1*k12*k9*x4 + (-1)*k12*k10*x3 + (-1)*k12*k11*x3 + (-1)*k12*k4*x3*x2)/k12, ((-1)*k12*k9*x4 + 1*k12*k10*x3 + (-1)*k12*k5*x4 + (-1)*k12*k6*x4*x1)/k12, 1*k12*k11*x3/k12 ]
constraints=[ ]
ID="BIOMD0000000609"
pol=true
mass_bool=true
rev=0
irr=10
def=2
rat=true
desc="Reddyhoff2015 - Acetaminophen metabolism and toxicity"
stoichMatrix=[ [ 0, 0, 0, 0, 0, 0,0,-1,-1,1], [ 0, 0, 0, 0,-1,-1,1, 0, 0,0], [ 1,-1, 0,-1,-1, 0,0, 0, 0,0], [ -1, 1,-1, 0, 0, 0,0,-1, 0,0], [ 0, 0, 0, 1, 0, 0,0, 0, 0,0 ] ]
reconStoichMatrix=[ [ 0, 0, 0, 0, 0, 0,0,-1,-1,1], [ 0, 0, 0, 0,-1,-1,1, 0, 0,0], [ 1,-1, 0,-1,-1, 0,0, 0, 0,0], [ -1, 1,-1, 0, 0, 0,0,-1, 0,0], [ 0, 0, 0, 1, 0, 0,0, 0, 0,0 ] ]
kineticMatrix=[ [ 0,0,0,0,0,0,0,1,1,0], [ 0,0,0,0,1,1,0,0,0,0], [ 0,1,0,1,1,0,0,0,0,0], [ 1,0,1,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,0,0,0 ] ]
paramValues=[ 33//250000000000000,2,687//50000000000000000,1600000000000000000,299//100,226000000000000,53//2000000000000000,2,63//200,63//2000,110,1 ]
paramNames=[ "P0","dG","bG","kGSH","kG","kS","bS","dS","k450","kN","kPSH","compartment" ]
speciesNames=[ "Sulphate__PAPS","GSH","NAPQI","Paracetamol_APAP","Protein_adducts" ]
