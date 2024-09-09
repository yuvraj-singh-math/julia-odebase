# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5)=rational_function_field(QQ,["k1","k2","k3","k4","k5"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[(-1)*k3*(x2*x1 - k1*x3)/k3, ((-1)*k3*(x2*x1 - k1*x3) + 1*k3*k2*x3)/k3, (1*k3*(x2*x1 - k1*x3) + (-1)*k3*k2*x3)/k3, 1*k3*k2*x3/k3 ]
constraints=[ 1*k3*x1 + 1*k3*x3 + 1*k3*x4 - k3*k4, 1*k3*x2 + 1*k3*x3 - k3*k5 ]
name="BIOMD0000000283"

