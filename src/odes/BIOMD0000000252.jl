# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[k1 - k6*x1*x3 - k2*x1 + (k5 + k8)*x4, k3*x1^2 - k7*x2, k4*x2 - k6*x1*x3 + (k5 + k9)*x4 - k8*x3, k6*x1*x3 - (k5 + k9)*x4 - k8*x4 ]
constraints=[ ]
ID="BIOMD0000000252"
pol=true
mass_bool=false
rev=0
irr=0
def=0
rat=true
desc="Hunziker2010_p53_StressSpecificResponse"
stoichMatrix=[ [ ], [ ], [ ], [ ] ]
reconStoichMatrix=[ [ ], [ ], [ ], [ ] ]
kineticMatrix=[ [ ], [ ], [ ], [ ] ]
paramValues=[ 1000,1//10,3//100,7//5,7200,5000,3//5,1//5,11,1 ]
paramNames=[ "S","alpha","k_t","k_tl","k_b","k_f","beta","gamma","delta","compartment_1" ]
speciesNames=[ "p","mm","m","pm" ]
