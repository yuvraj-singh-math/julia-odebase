# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20","k21"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9","x10"])
chemSystem=[(-1)*k1*k2*x1/k1, 1*k1*k2*x1/k1, (1*k1*k3 + 1*k1*k4*x4 + (-1)*k1*k5*x3)/k1, (1*k1*k7*x5*x2 + (-1)*k1*k9*x4)/k1, (1*k1*k6*x3 + (-1)*k1*k7*x5*x2 + (-1)*k1*k8*x5)/k1, (-1)*k1*k10*x6/k1, 1*k1*k10*x6/k1, ((-1)*k1*k11*x8*x9 + (-1)*k1*k12*x8 + 1*k1*k19*x7*x4)/k1, (1*k1*k17*x10 + (-1)*k1*k18*x9)/k1, (1*k1*k13 + 1*k1*k14*x7 + (-1)*k1*k15*x10*x4 + (-1)*k1*k16*x10)/k1 ]
constraints=[ 1*k1*x1 + 1*k1*x2 - k1*k20, 1*k1*x6 + 1*k1*x7 - k1*k21 ]
name="BIOMD0000001004"

