# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[((-1)*x1*k8*k3*k2 + (-1)*x1*x4*k4*k2 + 1*x3*k7*k2)/k2, 0, (1*k8*x4*k5*k2 + (-1)*x3*k7*k2)/k2, (1*x1*k8*k3*k2 + (-1)*x1*x4*k4*k2 + 1*k8*x4*k5*k2 + (-2)*x4^2*k6*k2)/k2, 0 ]
constraints=[ ]
name="BIOMD0000000040"

