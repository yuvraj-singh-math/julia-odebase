# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3,x4,x5,x6,x7)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7"])
chemSystem=[(-(k1*x5 + k9*x7))*x1, (-k2)*(1 + k10)*x4*x2, (-k4)*x6*x3, (k1*x5 + k9*x7)*x1 - k5*x4, k2*x4*x2 - k3*x7*x5 - k6*x5, k2*k10*x4*x2 + k3*x7*x5 - k7*x6, k4*x6*x3 - k8*x7 ]
constraints=[ ]
ID="BIOMD0000000369"
pol=true
mass_bool=false
rev=0
irr=0
def=0
rat=true
desc="Beltrami1995_ThrombinGeneration_D"
stoichMatrix=[ [ ], [ ], [ ], [ ], [ ], [ ], [ ] ]
reconStoichMatrix=[ [ ], [ ], [ ], [ ], [ ], [ ], [ ] ]
kineticMatrix=[ [ ], [ ], [ ], [ ], [ ], [ ], [ ] ]
paramValues=[ 1,1//10,1,1,1,1,1,1,0,1//1000,1 ]
paramNames=[ "mu1","mu2","mu3","mu4","k1","k2","k3","k4","mu5","C","compartment_1" ]
speciesNames=[ "Z1","Z2","Z4","E1","E2","E3","E4" ]
