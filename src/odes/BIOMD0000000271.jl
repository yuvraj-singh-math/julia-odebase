# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[(1*k1*k2*k13 + (-1)*k1*x1*k13 + (-1)*k3*x2*x1*k13 + 1*k4*x3*k13 + 1*k6*x4*k13)/k12, ((-1)*k3*x2*x1*k13 + 1*k4*x3*k13 + 1*k6*x4*k13)/k11, (1*k3*x2*x1*k13 + (-1)*k4*x3*k13 + (-1)*k5*x3*k13)/k12, (1*k5*x3*k13 + (-1)*k6*x4*k13 + (-1)*k7*x4*k13 + (-1)*k8*x4*k13)/k13, 1*k7*x4*k13/k13, 1*k8*x4*k13/k11 ]
constraints=[ 1*k11*x2 + 1*k12*x3 + 1*k13*x4 + 1*k13*x5 + 1*k11*x6 - k11*k14 + k12*k15 + k13*k16 ]
name="BIOMD0000000271"

