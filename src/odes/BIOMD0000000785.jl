# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4)=rational_function_field(QQ,["k1","k2","k3","k4"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(1*k4*k1*x1 + (-1)*k4*x1*x2)/k4, (1*k4*x1*x2 + 1*k4*k3 + (-1)*k4*x2/k1 + (-1)*k4*k2*x1)/k4 ]
constraints=[ ]
ID="BIOMD0000000785"
pol=true
mass_bool=false
rev=0
irr=5
def=0
rat=true
desc="Sotolongo-Costa2003 - Behavior of tumors under nonstationary therapy"
stoichMatrix=[ [ 1,-1,0, 0, 0], [ 0, 1,1,-1,-1 ] ]
reconStoichMatrix=[ [ 1,-1,0, 0, 0], [ 0, 1,1,-1,-1 ] ]
kineticMatrix=[ [ 0,1,0,0,0], [ 0,0,0,1,1 ] ]
paramValues=[ 2,1//5,1//4,1 ]
paramNames=[ "alpha","k","sigma","compartment" ]
speciesNames=[ "x_Malignant_Cells","y_Lymphocytes" ]
