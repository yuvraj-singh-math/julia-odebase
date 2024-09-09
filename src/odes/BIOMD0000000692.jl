# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8"])
chemSystem=[1*k3*(k7*x5 - k6*x1*x6)/k3/k3, (-1)*k3*(k13*x2*x8 - k12*x3)/k3/k3, ((-1)*k3*(k9*x3 - k8*x4)/k3 + 1*k3*(k13*x2*x8 - k12*x3)/k3)/k3, ((-1)*k3*(k5*x4 - k4*x5)/k3 + 1*k3*(k9*x3 - k8*x4)/k3)/k3, (1*k3*(k5*x4 - k4*x5)/k3 + (-1)*k3*(k7*x5 - k6*x1*x6)/k3)/k3, (1*k3*(k7*x5 - k6*x1*x6)/k3 + (-1)*k3*(k11*x6 - k10*x7*x8)/k3)/k3, 1*k3*(k11*x6 - k10*x7*x8)/k3/k3, (1*k3*(k11*x6 - k10*x7*x8)/k3 + (-1)*k3*(k13*x2*x8 - k12*x3)/k3)/k3 ]
constraints=[ 1*k3*x1 + 1*k3*x2 + 1*k3*x3 + 1*k3*x4 + 1*k3*x5 - k3*k14, 1*k3*x2 + 1*k3*x3 + 1*k3*x4 + 1*k3*x5 + 1*k3*x6 + 1*k3*x7 - k3*k15, 1*k3*x3 + 1*k3*x4 + 1*k3*x5 + 1*k3*x6 + 1*k3*x8 - k3*k16 ]
name="BIOMD0000000692"

