# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k9*k1*x1 + (-1)*k9*k1*x1*x1 + (-1)*k9*k1*x1*x2 + (-1)*k9*k2*x1*x3)/k9, ((-1)*k9*k3*x2*x4 + (-1)*k9*x2 + 1*k9*k2*x1*x3)/k9, (1*k9*k8*x2 + (-1)*k9*k5*x3 + (-1)*k9*k4*x3*x4 + (-1)*k9*k2*x1*x3)/k9, (1*k9*k6*x2*x4 + (-1)*k9*k7*x4)/k9 ]
constraints=[ ]
ID="BIOMD0000000748"
pol=true
mass_bool=false
rev=0
irr=11
def=1
rat=true
desc="Phan2017 - innate immune in oncolytic virotherapy"
stoichMatrix=[ [ 1,-1,-1, 0, 0,0, 0, 0,0, 0,-1], [ 0, 0, 0,-1,-1,0, 0, 0,0, 0, 1], [ 0, 0, 0, 0, 0,1,-1,-1,0, 0,-1], [ 0, 0, 0, 0, 0,0, 0, 0,1,-1, 0 ] ]
reconStoichMatrix=[ [ 1,-1,-1, 0, 0,0, 0, 0,0, 0,-1], [ 0, 0, 0,-1,-1,0, 0, 0,0, 0, 1], [ 0, 0, 0, 0, 0,1,-1,-1,0, 0,-1], [ 0, 0, 0, 0, 0,0, 0, 0,1,-1, 0 ] ]
kineticMatrix=[ [ 0,1,1,0,0,0,0,0,0,0,1], [ 0,0,0,1,1,0,0,0,0,0,0], [ 0,0,0,0,0,0,1,1,0,0,1], [ 0,0,0,0,0,0,0,0,0,1,0 ] ]
paramValues=[ 9//25,11//100,12//25,4//25,1//5,3//5,9//250,9,1 ]
paramNames=[ "r","a","c","d","e","m","n","b","tumor_microenvironment" ]
speciesNames=[ "x","y","v","z" ]
