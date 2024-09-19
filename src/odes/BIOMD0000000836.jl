# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(k1*(1 - x1/k5) - k2*x2)*x1, ((-k3) + k4*x1)*x2 ]
constraints=[ ]
ID="BIOMD0000000836"
pol=true
mass_bool=false
rev=0
irr=0
def=0
rat=true
desc="Radosavljevic2009_BioterroristAttack_PanicProtection_1"
stoichMatrix=[ [ ], [ ] ]
reconStoichMatrix=[ [ ], [ ] ]
kineticMatrix=[ [ ], [ ] ]
paramValues=[ 6,14//5,0,1,10,1 ]
paramNames=[ "alpha","beta","gamma","delta","C","compartment" ]
speciesNames=[ "S","P" ]
