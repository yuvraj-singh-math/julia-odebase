# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9"])
chemSystem=[((-1)*k1*(k2*x2*x1 - k3*x3) + 1*k1*(k5*x4 - k6*x5*x1) + (-1)*k1*(k9*x1*x7 - k10*x8))/k1, ((-1)*k1*(k2*x2*x1 - k3*x3) + 1*k1*(k15*x3*x7 - k16*x2*x9))/k1, (1*k1*(k2*x2*x1 - k3*x3) + (-1)*k1*k4*x3 + (-1)*k1*(k15*x3*x7 - k16*x2*x9))/k1, (1*k1*k4*x3 + (-1)*k1*(k5*x4 - k6*x5*x1) + (-1)*k1*(k11*x4*x6 - k12*x9))/k1, (1*k1*(k5*x4 - k6*x5*x1) + (-1)*k1*(k7*x5*x6 - k8*x7))/k1, ((-1)*k1*(k7*x5*x6 - k8*x7) + (-1)*k1*(k11*x4*x6 - k12*x9))/k1, (1*k1*(k7*x5*x6 - k8*x7) + (-1)*k1*(k9*x1*x7 - k10*x8) + (-1)*k1*(k15*x3*x7 - k16*x2*x9))/k1, (1*k1*(k9*x1*x7 - k10*x8) + 1*k1*(k13*x9 - k14*x8))/k1, (1*k1*(k11*x4*x6 - k12*x9) + (-1)*k1*(k13*x9 - k14*x8) + 1*k1*(k15*x3*x7 - k16*x2*x9))/k1 ]
constraints=[ 1*k1*x1 + 1*k1*x3 + 1*k1*x4 + 1*k1*x8 + 1*k1*x9 - k1*k17, 1*k1*x2 + 1*k1*x3 + 1*k1*x4 + 1*k1*x5 + 1*k1*x7 + 1*k1*x8 + 1*k1*x9 - k1*k18, 1*k1*x6 + 1*k1*x7 + 1*k1*x8 + 1*k1*x9 - k1*k19 ]
name="BIOMD0000000359"

