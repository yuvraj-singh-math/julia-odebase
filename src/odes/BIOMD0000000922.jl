# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"])
polRing,(x1,x2,x3)=polynomial_ring(paramsRing,["x1","x2","x3"])
chemSystem=[1*k10*(k1*k2 - x1*(k3 + k4))/k10, 1*k10*(x1*k3 - x2*(k6 + k9) - k5*x2^2)/k10, 1*k10*(x2*k6 - x3*(k7 + k8))/k10 ]
constraints=[ ]
ID="BIOMD0000000922"
pol=true
mass_bool=false
rev=0
irr=3
def=0
rat=true
desc="Turner2015-Human/Mosquito ELP Model"
stoichMatrix=[ [ 1,0,0], [ 0,1,0], [ 0,0,1 ] ]
reconStoichMatrix=[ [ 1,0,0], [ 0,1,0], [ 0,0,1 ] ]
kineticMatrix=[ [ 0,0,0], [ 0,0,0], [ 0,0,0 ] ]
paramValues=[ 20,30,361//1000,1//20,1//5000,67//500,171//500,1//400,501//10000,1 ]
paramNames=[ "Ar","ep","Te","Me","K0","Tl","Tp","Mp","Ml","compartment" ]
speciesNames=[ "Population_of_Eggs","Population_of_Larvae","Population_of_Pupae" ]
