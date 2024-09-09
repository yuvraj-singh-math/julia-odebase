# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2,x3,x4)=polynomial_ring(paramsRing,["x1","x2","x3","x4"])
chemSystem=[0, 0, (2*k2*k6*x4 + (-1)*k3*x3^2 + (-1)*k4*x3*x4 + (-1)*k5*x3)/k1, ((-1)*k2*k6*x4 + 1*k3*x3^2)/k1 ]
constraints=[ ]
name="BIOMD0000000233"

