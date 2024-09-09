# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17"])
polRing,(x1,x2,x3,x4,x5,x6,x7)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7"])
chemSystem=[0, (1*k3*k4*k16 + (-1)*k3*k7*x2 + (-2)*k3*(k8*x2^2 - k9*x5) + (-1)*k3*(k12*x2*x4 - k13*x7))/k3, (1*k3*k5*x7 + (-1)*k3*k6*x3)/k3, (1*k3*k5*x7 + 1*k3*k11*x6 + (-1)*k3*(k12*x2*x4 - k13*x7) + (-1)*k3*(k14*x5*x4 - k15*x6))/k3, (1*k3*(k8*x2^2 - k9*x5) + (-1)*k3*k10*x5 + (-1)*k3*(k14*x5*x4 - k15*x6))/k3, ((-1)*k3*k11*x6 + 1*k3*(k14*x5*x4 - k15*x6))/k3, ((-1)*k3*k5*x7 + 1*k3*(k12*x2*x4 - k13*x7))/k3 ]
constraints=[ 1*k3*x4 + 1*k3*x6 + 1*k3*x7 - k3*k17 ]
name="BIOMD0000000870"

