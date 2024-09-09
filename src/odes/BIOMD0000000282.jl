# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[((-1)*k5*(k1*x1*x2 - k2*x3) + 1*k5*k3*x3*x2 + 1*k5*k4*x3*k6)/k5, ((-1)*k5*(k1*x1*x2 - k2*x3) + (-1)*k5*k3*x3*x2)/k5, (1*k5*(k1*x1*x2 - k2*x3) + (-1)*k5*k3*x3*x2 + (-1)*k5*k4*x3*k6)/k5, 1*k5*k3*x3*x2/k5, 0, 1*k5*k4*x3*k6/k5 ]
constraints=[ 1*k5*x1 + 1*k5*x3 - k5*k7, 1*k5*x2 + 1*k5*x3 + 2*k5*x4 + 1*k5*x6 - k5*k8 ]
name="BIOMD0000000282"

