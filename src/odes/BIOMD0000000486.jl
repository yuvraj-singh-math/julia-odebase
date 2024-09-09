# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4)=rational_function_field(QQ,["k1","k2","k3","k4"])
polRing,(x1,x2)=polynomial_ring(paramsRing,["x1","x2"])
chemSystem=[(1*k2*x2 + (-1)*k1*x1)/k3, ((-1)*k2*x2 + 1*k1*x1)/k3 ]
constraints=[ 1*x1 + 1*x2 - k4 ]
name="BIOMD0000000486"

