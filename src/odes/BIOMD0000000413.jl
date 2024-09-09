# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[((-1)*k2*x1*x2 + 1*k1*x3 + 1*k10 + (-1)*k3*x1)/k11, ((-1)*k2*x1*x2 + 1*k1*x3)/k11, (1*k2*x1*x2 + (-1)*k1*x3 + (-1)*k6*x3*x5 + 1*k4*x4 + 1*k5*x4)/k11, (1*k6*x3*x5 + (-1)*k4*x4 + (-1)*k5*x4)/k11, ((-1)*k6*x3*x5 + 1*k4*x4 + 1*k7 + (-1)*k8*x5)/k11 ]
constraints=[ 1*k11*x2 + 1*k11*x3 + 1*k11*x4 - k11*k12 ]
name="BIOMD0000000413"

