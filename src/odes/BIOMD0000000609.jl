# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[((-1)*k12*k6*x4*x1 + (-1)*k12*k8*x1 + 1*k12*k7)/k12, ((-1)*k12*k4*x3*x2 + (-1)*k12*k2*x2 + 1*k12*k3)/k12, (1*k12*k9*x4 + (-1)*k12*k10*x3 + (-1)*k12*k11*x3 + (-1)*k12*k4*x3*x2)/k12, ((-1)*k12*k9*x4 + 1*k12*k10*x3 + (-1)*k12*k5*x4 + (-1)*k12*k6*x4*x1)/k12, 1*k12*k11*x3/k12 ]
constraints=[ ]
name="BIOMD0000000609"

