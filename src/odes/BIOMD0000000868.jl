# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[0, (1*k2*k3*k9 + (-1)*k2*k6*x2 + (-1)*k2*(k7*x2*x4 - k8*x5))/k2, (1*k2*k4*x5 + (-1)*k2*k5*x3)/k2, (1*k2*k4*x5 + (-1)*k2*(k7*x2*x4 - k8*x5))/k2, ((-1)*k2*k4*x5 + 1*k2*(k7*x2*x4 - k8*x5))/k2 ]
constraints=[ 1*k2*x4 + 1*k2*x5 - k2*k10 ]
name="BIOMD0000000868"

