# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9","x10"])
chemSystem=[0, ((-1)*x2*x10*k2 + (-1)*x2*k3 + (-1)*x2*x4*k6 + 1*x5*k7 + 1*x8*k11 + (-1)*x2*x6*k12 + 1*x7*k13)/k1, (1*x2*x10*k2 + (-1)*x3*k4)/k1, ((-1)*x2*x4*k6 + 1*x5*k7)/k1, (1*x2*x4*k6 + (-1)*x5*k7)/k1, ((-1)*x2*x6*k12 + 1*x7*k13)/k1, (1*x2*x6*k12 + (-1)*x7*k13)/k1, (1*x4*k8 + 1*x5*k9 + (-1)*x8*k10)/k1, (1*x6*k14 + 1*x7*k15 + (-1)*x9*k16)/k1, ((-1)*x2*x10*k2 + 1*x3*k4 + (-1)*x10*k5 + 1*x9*k17)/k1 ]
constraints=[ 1*x4 + 1*x5 - k19, 1*x6 + 1*x7 - k20 ]
name="BIOMD0000000035"

