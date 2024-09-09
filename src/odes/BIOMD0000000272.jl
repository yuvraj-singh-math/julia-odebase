# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[(1*k1*k2*k12 + (-1)*k1*x1*k12 + (-1)*k3*x2*x1*k12 + 1*k4*x3*k12)/k11, ((-1)*k3*x2*x1*k12 + 1*k4*x3*k12 + 1*k5*x4*k12)/k10, (1*k3*x2*x1*k12 + (-1)*k4*x3*k12 + (-1)*k1*x3*k12)/k11, (1*k1*x3*k12 + (-1)*k5*x4*k12 + (-1)*k6*x4*k12 + (-1)*k7*x4*k12)/k12, 1*k6*x4*k12/k12, 1*k7*x4*k12/k10 ]
constraints=[ 1*k10*x2 + 1*k11*x3 + 1*k12*x4 + 1*k12*x5 + 1*k10*x6 - k10*k13 + k11*k14 + k12*k15 ]
name="BIOMD0000000272"

