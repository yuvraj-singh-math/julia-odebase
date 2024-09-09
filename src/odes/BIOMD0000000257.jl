# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20","k21","k22","k23"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9","x10","x11"])
chemSystem=[0, 0, 0, ((-1)*k20*(k1*k21*x4 - k2*x5) + 1*k20*(k5*x6 - k6*x9*x4) + (-1)*k20*k7*x4 + 1*k20*(k12*x11 - k13*x4*x8) + 1*k20*(k17*x7 - k18*x4*x8))/k20, (1*k20*(k1*k21*x4 - k2*x5) + (-1)*k20*(k3*k23*x5 - k4*x6) + (-1)*k20*(k15*k22*x5 - k16*x7))/k20, (1*k20*(k3*k23*x5 - k4*x6) + (-1)*k20*(k5*x6 - k6*x9*x4))/k20, (1*k20*(k15*k22*x5 - k16*x7) + (-1)*k20*(k17*x7 - k18*x4*x8))/k20, ((-1)*k20*(k8*x9*x8 - k9*x10) + 1*k20*(k12*x11 - k13*x4*x8) + (-1)*k20*k7*x8 + 1*k20*(k17*x7 - k18*x4*x8))/k20, (1*k20*(k5*x6 - k6*x9*x4) + (-1)*k20*(k8*x9*x8 - k9*x10) + (-1)*k20*k7*x9)/k20, (1*k20*(k8*x9*x8 - k9*x10) + (-1)*k20*(k10*k22*x10 - k11*x11))/k20, (1*k20*(k10*k22*x10 - k11*x11) + (-1)*k20*(k12*x11 - k13*x4*x8))/k20 ]
constraints=[ ]
name="BIOMD0000000257"

