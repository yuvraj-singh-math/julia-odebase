# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k13*k11 + (-1)*k13*k4*x4*x1 + (-1)*k13*(x1*k3*x2 + x1))/k13, (1*k13*(x2*k6*x1 + k8*x3) + (-1)*k13*(x2*k2/k1 + x2*k7*x3))/k13, (1*k13*k4*x4*x1 + (-1)*k13*k5*x2*x3)/k13, (1*k13*x4*k10*(1 - k9*x4) + (-1)*k13*k4*x4*x1)/k13 ]
constraints=[ ]
ID="BIOMD0000001034"
pol=true
mass_bool=false
rev=0
irr=7
def=1
rat=true
desc="Bunimovich-Mendrazitsky2007 - Mathematical model of BCG immunotherapy"
stoichMatrix=[ [ 1,0, 0,0,-1, 0,-1], [ 0,1,-1,0, 0, 0, 0], [ 0,0, 0,0, 1,-1, 0], [ 0,0, 0,1,-1, 0, 0 ] ]
reconStoichMatrix=[ [ 1,0, 0,0,-1, 0,-1], [ 0,1,-1,0, 0, 0, 0], [ 0,0, 0,0, 1,-1, 0], [ 0,0, 0,1,-1, 0, 0 ] ]
kineticMatrix=[ [ 0,0,0,0,1,0,1], [ 0,0,1,0,0,0,0], [ 0,0,0,0,0,1,0], [ 0,0,0,0,1,0,0 ] ]
paramValues=[ 1,41//100,5//4,57//200,11//10,17//200,3//1000,13//25,31//2000,3//25,19//10,41//100,1 ]
paramNames=[ "mu1","mu2","p1","p2","p3","p4","p5","alpha","beta","r","b","mu","Bladder" ]
speciesNames=[ "BCG","Effector_cells","Tumor_infected_cells","Tumor_uninfected_cells" ]
