# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[((-1)*k1*k2*x1 + (-1)*k1*(k3*x2*x1 - k4*x4))/k1, (1*k1*k2*x1 + (-1)*k1*(k3*x2*x1 - k4*x4) + 2*k1*k5*x4)/k1, (1*k1*k2*x1 + 1*k1*k5*x4)/k1, (1*k1*(k3*x2*x1 - k4*x4) + (-1)*k1*k5*x4)/k1 ]
constraints=[ 1*k1*x1 + 1*k1*x2 + 2*k1*x4 - k1*k6, 1*k1*x1 + 1*k1*x3 + 1*k1*x4 - k1*k7 ]
name="BIOMD0000000092"

