# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24,k25,k26,k27,k28,k29,k30,k31,k32,k33,k34,k35)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20","k21","k22","k23","k24","k25","k26","k27","k28","k29","k30","k31","k32","k33","k34","k35"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[((-1)*k28*((k10*k8 + k11*k7)/(k8 + k7*(1 + k8/k4))*k29*x1 - (k14 + k16*k7)/(1 + k7/k17)*x2) + (-1)*k28*((k3*k4 + k5)*k7/(k4 + k7*(1 + k4/k8))*x1 - (k30 + k31)*x3))/k28, (1*k28*((k10*k8 + k11*k7)/(k8 + k7*(1 + k8/k4))*k29*x1 - (k14 + k16*k7)/(1 + k7/k17)*x2) + (-1)*k28*(k19*k17/(k17 + k7)*x2 - k32*x4) + (-1)*k28*((k21*k17 + k22)*k7/(k17 + k7)*x2 - k4*(k24 + k25)/(k4 + k7)*x5))/k28, 1*k28*((k3*k4 + k5)*k7/(k4 + k7*(1 + k4/k8))*x1 - (k30 + k31)*x3)/k28, 1*k28*(k19*k17/(k17 + k7)*x2 - k32*x4)/k28, (1*k28*((k21*k17 + k22)*k7/(k17 + k7)*x2 - k4*(k24 + k25)/(k4 + k7)*x5) + (-1)*k28*((k3*k4 + k5)*k7/(k4 + k7)*x5 - (k33 + k34)*x6))/k28, 1*k28*((k3*k4 + k5)*k7/(k4 + k7)*x5 - (k33 + k34)*x6)/k28 ]
constraints=[ 1*k28*x1 + 1*k28*x2 + 1*k28*x3 + 1*k28*x4 + 1*k28*x5 + 1*k28*x6 - k28*k35 ]
name="BIOMD0000000057"

