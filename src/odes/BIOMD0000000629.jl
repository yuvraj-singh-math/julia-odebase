# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[(-1)*k1*(k2*x1*x3 - k3*x2)/k1, (1*k1*(k2*x1*x3 - k3*x2) + (-1)*k1*(k4*x2*x4 - k5*x5))/k1, (-1)*k1*(k2*x1*x3 - k3*x2)/k1, (-1)*k1*(k4*x2*x4 - k5*x5)/k1, 1*k1*(k4*x2*x4 - k5*x5)/k1 ]
constraints=[ 1*k1*x1 + 1*k1*x2 + 1*k1*x5 - k1*k6, 1*k1*x2 + 1*k1*x3 + 1*k1*x5 - k1*k7, 1*k1*x4 + 1*k1*x5 - k1*k8 ]
name="BIOMD0000000629"

