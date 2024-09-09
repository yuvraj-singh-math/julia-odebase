# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9"])
chemSystem=[(-1)*k1*k2*x1*x2/k1, (-1)*k1*k2*x1*x2/k1, (1*k1*k2*x1*x2 + (-1)*k1*k4*x3*x4 + 1*k1*k5*x6)/k1, ((-1)*k1*k3*x1*x2*x4 + (-1)*k1*k4*x3*x4)/k1, (1*k1*k3*x1*x2*x4 + 1*k1*k6*x3*x7 + (-1)*k1*k8*x5)/k1, (1*k1*k4*x3*x4 + (-1)*k1*k5*x6)/k1, (1*k1*k5*x6 + (-1)*k1*k6*x3*x7 + (-1)*k1*k7*x7)/k1, 1*k1*k7*x7/k1, 1*k1*k8*x5/k1 ]
constraints=[ 1*k1*x1 + 1*k1*x3 + 1*k1*x6 - k1*k9, 1*k1*x2 + 1*k1*x3 + 1*k1*x6 - k1*k10, 1*k1*x4 + 1*k1*x5 + 1*k1*x6 + 1*k1*x7 + 1*k1*x8 + 1*k1*x9 - k1*k11 ]
name="BIOMD0000000755"

