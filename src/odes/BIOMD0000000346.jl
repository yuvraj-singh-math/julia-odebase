# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5)=rational_function_field(QQ,["k1","k2","k3","k4","k5"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[k3*(x1 + (-x1^3//3) + x2 + k4), (-1/k3)*(x1 + (-k1) + k2*x2) ]
constraints=[ ]
ID="BIOMD0000000346"
pol=true
mass_bool=false
rev=0
irr=0
def=0
rat=true
desc="FitzHugh1961_NerveMembrane"
stoichMatrix=[ [ ], [ ] ]
reconStoichMatrix=[ [ ], [ ] ]
kineticMatrix=[ [ ], [ ] ]
paramValues=[ 7//10,4//5,3,-2//5,1 ]
paramNames=[ "a","b","c","z","compartment" ]
speciesNames=[ "x","y" ]
