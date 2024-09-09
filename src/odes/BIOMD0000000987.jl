# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9"])
chemSystem=[((-1)*k12*k1*x1 + 1*k12*k10)/k12, (1*k12*k1*x1 + (-1)*k12*k2*x2)/k12, (1*k12*k2*x2 + (-1)*k12*k3*x3)/k12, (1*k12*k3*x3 + (-1)*k12*k4*x4)/k12, (1*k12*k4*x4 + (-1)*k12*k5*x5)/k12, (1*k12*k5*x5 + (-1)*k12*k6*x6)/k12, (1*k12*k6*x6 + (-1)*k12*k7*x7)/k12, (1*k12*k7*x7 + (-1)*k12*k8*x8)/k12, ((-1)*k12*k9*x9 + 1*k12*k8*x8)/k12 ]
constraints=[ ]
name="BIOMD0000000987"

