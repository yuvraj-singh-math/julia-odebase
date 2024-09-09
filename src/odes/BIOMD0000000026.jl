# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9","x10","x11"])
chemSystem=[((-1)*k17*(k1*x1*x4 - k2*x6) + 1*k17*(k15*x11 - k16*x1*x5))/k17, (1*k17*k3*x6 + (-1)*k17*(k4*x2*x4 - k5*x7) + 1*(k10*x9 - k11*x2*x5) + (-1)*k17*(k12*x2*x5 - k13*x10))/k17, (1*k17*k6*x7 + (-1)*k17*(k7*x3*x5 - k8*x8))/k17, ((-1)*k17*(k1*x1*x4 - k2*x6) + 1*k17*k3*x6 + (-1)*k17*(k4*x2*x4 - k5*x7) + 1*k17*k6*x7)/k17, ((-1)*k17*(k7*x3*x5 - k8*x8) + 1*(k10*x9 - k11*x2*x5) + (-1)*k17*(k12*x2*x5 - k13*x10) + 1*k17*(k15*x11 - k16*x1*x5))/k17, (1*k17*(k1*x1*x4 - k2*x6) + (-1)*k17*k3*x6)/k17, (1*k17*(k4*x2*x4 - k5*x7) + (-1)*k17*k6*x7)/k17, (1*k17*(k7*x3*x5 - k8*x8) + (-1)*k17*k9*x8)/k17, (1*k17*k9*x8 + (-1)*(k10*x9 - k11*x2*x5))/k17, (1*k17*(k12*x2*x5 - k13*x10) + (-1)*k17*k14*x10)/k17, (1*k17*k14*x10 + (-1)*k17*(k15*x11 - k16*x1*x5))/k17 ]
constraints=[ 1*x1 + 1*x2 + 1*x3 + 1*x6 + 1*x7 + 1*x8 + 1*x9 + 1*x10 + 1*x11 - k18, 1*x4 + 1*x6 + 1*x7 - k19, 1*x5 + 1*x8 + 1*x9 + 1*x10 + 1*x11 - k20 ]
name="BIOMD0000000026"

