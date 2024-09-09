# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(1*k10*k2*x2 + (-1)*k10*k3*k1*x1 + 1*k10*k1*x3)/k10, ((-1)*k10*k2*x2 + 1*k10*k1*x4 + (-1)*k10*k3*k1*x2)/k10, (1*k10*k3*k1*x1 + (-1)*k10*k1*x3 + 1*k10*k2*x4 + (-1)*k10*k5*k2*x3)/k10, ((-1)*k10*k1*x4 + 1*k10*k3*k1*x2 + (-1)*k10*k2*x4 + 1*k10*k5*k2*x3)/k10 ]
constraints=[ 1*k10*x1 + 1*k10*x2 + 1*k10*x3 + 1*k10*x4 - k10*k11 ]
name="BIOMD0000000854"

