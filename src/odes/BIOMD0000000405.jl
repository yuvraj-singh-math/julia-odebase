# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7"])
polRing,(x1,x2,x3,x4,x5,x6)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6"])
chemSystem=[((-1)*k6*k4*x1*x5 + 1*k6*k1 + (-1)*k6*k5*x1)/k6, ((-1)*k6*k4*x2*x5 + 1*k6*k2 + (-1)*k6*k5*x2)/k6, (1*k6*k4*x1*x5 + (-1)*k6*k3*x3)/k6, (1*k6*k4*x2*x5 + (-1)*k6*k3*x4)/k6, ((-1)*k6*k4*x1*x5 + (-1)*k6*k4*x2*x5 + 1*k6*k3*x3 + 1*k6*k3*x4)/k6, 0/k6 ]
constraints=[ 1*k6*x3 + 1*k6*x4 + 1*k6*x5 - k6*k7 ]
name="BIOMD0000000405"

