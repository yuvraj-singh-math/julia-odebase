# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(-1)*k7*x1*k2/k2, ((-1)*k5*x2*k2 + 1*k7*x1*k2)/k2, (1*k5*x2*k2 + (-1)*k6*x3*k3)/k3, 1*k6*x3*k3/k4 ]
constraints=[ 1*k2*x1 + 1*k2*x2 + 1*k3*x3 + 1*k4*x4 - k2*k8 + k3*k9 + k4*k10 ]
name="BIOMD0000000267"

