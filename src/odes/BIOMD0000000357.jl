# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9"])
chemSystem=[((-1)*k13*(k1*x1*x3 - k9*x2) + 1*k13*k2*x2 + (-1)*k13*(k3*x1*x4 - k10*x5) + 1*k13*k4*x5 + (-1)*k13*(k5*x1*x3 - k11*x7) + 1*k13*k6*x7 + (-1)*k13*(k7*x1*x8 - k12*x9) + 1*k13*k8*x9)/k13, (1*k13*(k1*x1*x3 - k9*x2) + (-1)*k13*k2*x2)/k13, ((-1)*k13*(k1*x1*x3 - k9*x2) + (-1)*k13*(k5*x1*x3 - k11*x7))/k13, (1*k13*k2*x2 + (-1)*k13*(k3*x1*x4 - k10*x5))/k13, (1*k13*(k3*x1*x4 - k10*x5) + (-1)*k13*k4*x5)/k13, (1*k13*k4*x5 + 1*k13*k8*x9)/k13, (1*k13*(k5*x1*x3 - k11*x7) + (-1)*k13*k6*x7)/k13, (1*k13*k6*x7 + (-1)*k13*(k7*x1*x8 - k12*x9))/k13, (1*k13*(k7*x1*x8 - k12*x9) + (-1)*k13*k8*x9)/k13 ]
constraints=[ 1*k13*x1 + 1*k13*x2 + 1*k13*x5 + 1*k13*x7 + 1*k13*x9 - k13*k14, 1*k13*x2 + 1*k13*x3 + 1*k13*x4 + 1*k13*x5 + 1*k13*x6 + 1*k13*x7 + 1*k13*x8 + 1*k13*x9 - k13*k15 ]
name="BIOMD0000000357"

