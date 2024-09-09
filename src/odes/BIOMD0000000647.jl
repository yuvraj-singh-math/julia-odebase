# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9","x10","x11"])
chemSystem=[((-1)*k12*k1*x1*x2 + 1*k12*k2*x3 + 1*k12*k5*x4)/k12, ((-1)*k12*k1*x1*x2 + 1*k12*k2*x3 + 1*k12*k11*x11)/k12, (1*k12*k1*x1*x2 + (-1)*k12*k2*x3 + (-1)*k12*k3*x3*x9 + 1*k12*k4*x4)/k12, (1*k12*k3*x3*x9 + (-1)*k12*k4*x4 + (-1)*k12*k5*x4)/k12, (1*k12*k5*x4 + (-1)*k12*k6*x5*x7 + 1*k12*k7*x8)/k12, (1*k12*k5*x4 + (-1)*k12*k9*x6*x10 + 1*k12*k10*x11)/k12, ((-1)*k12*k6*x5*x7 + 1*k12*k7*x8 + 1*k12*k8*x8)/k12, (1*k12*k6*x5*x7 + (-1)*k12*k7*x8 + (-1)*k12*k8*x8)/k12, ((-1)*k12*k3*x3*x9 + 1*k12*k4*x4 + 1*k12*k8*x8)/k12, ((-1)*k12*k9*x6*x10 + 1*k12*k10*x11 + 1*k12*k11*x11)/k12, (1*k12*k9*x6*x10 + (-1)*k12*k10*x11 + (-1)*k12*k11*x11)/k12 ]
constraints=[ 1*k12*x1 + 1*k12*x3 + 1*k12*x4 - k12*k13, 1*k12*x2 + 1*k12*x3 + 1*k12*x4 + 1*k12*x6 + 1*k12*x11 - k12*k14, 1*k12*x4 + 1*k12*x5 + 1*k12*x8 + 1*k12*x9 - k12*k15, 1*k12*x7 + 1*k12*x8 - k12*k16, 1*k12*x10 + 1*k12*x11 - k12*k17 ]
name="BIOMD0000000647"

