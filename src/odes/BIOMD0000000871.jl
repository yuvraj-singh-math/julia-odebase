# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20","k21","k22"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8"])
chemSystem=[(1*k2*k4*k1/(k3 + k1) + (-1)*k2*k7*x1 + (-2)*k2*(k8*x1^2 - k9*x4) + (-1)*k2*(k12*x1*x3 - k13*x6))/k2, (1*k2*k5*x6 + (-1)*k2*k6*x2 + (-1)*k2*(k18*x7*x2 - k19*x8))/k2, (1*k2*k5*x6 + 1*k2*k11*x5 + (-1)*k2*(k12*x1*x3 - k13*x6) + (-1)*k2*(k14*x4*x3 - k15*x5))/k2, (1*k2*(k8*x1^2 - k9*x4) + (-1)*k2*k10*x4 + (-1)*k2*(k14*x4*x3 - k15*x5))/k2, ((-1)*k2*k11*x5 + 1*k2*(k14*x4*x3 - k15*x5))/k2, ((-1)*k2*k5*x6 + 1*k2*(k12*x1*x3 - k13*x6))/k2, (1*k2*k17*k1/(k16 + k1) + (-1)*k2*(k18*x7*x2 - k19*x8) + (-1)*k2*k21*x7)/k2, (1*k2*(k18*x7*x2 - k19*x8) + (-1)*k2*k20*x8)/k2 ]
constraints=[ 1*k2*x3 + 1*k2*x5 + 1*k2*x6 - k2*k22 ]
name="BIOMD0000000871"

