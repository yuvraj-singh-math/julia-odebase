# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[((-1)*k1*x1*x2 + 1*k2*x3 + 1*k3*x3)/k7, ((-1)*k1*x1*x2 + 1*k2*x3 + 1*k6*x6)/k7, (1*k1*x1*x2 + (-1)*k2*x3 + (-1)*k3*x3)/k7, ((-1)*k4*x4*x5 + 1*k5*x6 + 1*k6*x6)/k7, (1*k3*x3 + (-1)*k4*x4*x5 + 1*k5*x6)/k7, (1*k4*x4*x5 + (-1)*k5*x6 + (-1)*k6*x6)/k7 ]
constraints=[ 1*x1 + 1*x3 - k8, 1*x2 + 1*x3 + 1*x5 + 1*x6 - k9, 1*x4 + 1*x6 - k10 ]
name="BIOMD0000000487"

