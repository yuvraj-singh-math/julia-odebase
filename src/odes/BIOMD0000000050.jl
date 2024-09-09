# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9","x10","x11","x12","x13","x14"])
chemSystem=[((-1)*k2*x1 + (-1)*k3*x1 + (-1)*k4*x1)/k1, (1*k2*x1 + (-1)*k5*x2 + (-1)*k11*x2 + (-1)*k12*x2)/k1, (1*k3*x1 + (-1)*k8*x3 + (-1)*k17*x3)/k1, (1*k4*x1 + 1*k6*x6 + 1*k9*x8 + (-1)*k15*x4*x5 + (-1)*k16*x4)/k1, (1*k4*x1 + 1*k5*x2 + 1*k8*x3 + 1*k11*x2 + 1*k12*x2 + (-1)*k15*x4*x5 + 1*k17*x3)/k1, (1*k5*x2 + (-1)*k6*x6 + (-1)*k7*x6 + 1*k14*x11)/k1, (1*k7*x6 + 1*k16*x4)/k1, (1*k8*x3 + (-1)*k9*x8 + (-1)*k10*x8)/k1, (1*k10*x8 + 1*k16*x4)/k1, (1*k11*x2 + (-1)*k13*x10)/k1, (1*k12*x2 + 1*k13*x10 + (-1)*k14*x11)/k1, 1*k16*x4/k1, 1*k15*x4*x5/k1, 1*k17*x3/k1 ]
constraints=[ 1*k1*x1 + 1*k1*x2 + 1*k1*x3 + 1*k1*x5 + 1*k1*x13 - k1*k18 ]
name="BIOMD0000000050"

