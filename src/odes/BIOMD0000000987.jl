# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9"])
chemSystem=[((-1)*k12*k1*x1 + 1*k12*k10)/k12, (1*k12*k1*x1 + (-1)*k12*k2*x2)/k12, (1*k12*k2*x2 + (-1)*k12*k3*x3)/k12, (1*k12*k3*x3 + (-1)*k12*k4*x4)/k12, (1*k12*k4*x4 + (-1)*k12*k5*x5)/k12, (1*k12*k5*x5 + (-1)*k12*k6*x6)/k12, (1*k12*k6*x6 + (-1)*k12*k7*x7)/k12, (1*k12*k7*x7 + (-1)*k12*k8*x8)/k12, ((-1)*k12*k9*x9 + 1*k12*k8*x8)/k12 ]
constraints=[ ]
ID="BIOMD0000000987"
pol=true
mass_bool=true
rev=0
irr=10
def=0
rat=true
desc="Aubry1995 - Nine-compartment model of fluid-phase endocytosis kinetics in Dictyostelium discoideum"
stoichMatrix=[ [ -1, 0, 0, 0, 0, 0, 0, 0,1, 0], [ 1,-1, 0, 0, 0, 0, 0, 0,0, 0], [ 0, 1, 0,-1, 0, 0, 0, 0,0, 0], [ 0, 0, 0, 1,-1, 0, 0, 0,0, 0], [ 0, 0, 0, 0, 1,-1, 0, 0,0, 0], [ 0, 0, 0, 0, 0, 1,-1, 0,0, 0], [ 0, 0, 0, 0, 0, 0, 1,-1,0, 0], [ 0, 0, 0, 0, 0, 0, 0, 1,0,-1], [ 0, 0,-1, 0, 0, 0, 0, 0,0, 1 ] ]
reconStoichMatrix=[ [ -1, 0, 0, 0, 0, 0, 0, 0,1, 0], [ 1,-1, 0, 0, 0, 0, 0, 0,0, 0], [ 0, 1, 0,-1, 0, 0, 0, 0,0, 0], [ 0, 0, 0, 1,-1, 0, 0, 0,0, 0], [ 0, 0, 0, 0, 1,-1, 0, 0,0, 0], [ 0, 0, 0, 0, 0, 1,-1, 0,0, 0], [ 0, 0, 0, 0, 0, 0, 1,-1,0, 0], [ 0, 0, 0, 0, 0, 0, 0, 1,0,-1], [ 0, 0,-1, 0, 0, 0, 0, 0,0, 1 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0,0,0,0,0], [ 0,1,0,0,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0,0,0], [ 0,0,0,0,1,0,0,0,0,0], [ 0,0,0,0,0,1,0,0,0,0], [ 0,0,0,0,0,0,1,0,0,0], [ 0,0,0,0,0,0,0,1,0,0], [ 0,0,0,0,0,0,0,0,0,1], [ 0,0,1,0,0,0,0,0,0,0 ] ]
paramValues=[ 9//100,127//1000,99//1000,9//100,93//1000,49//500,49//500,111//1000,12//125,34//5,0,1 ]
paramNames=[ "lambda_compartment_1","lambda_compartment_2","lambda_compartment_3","lambda_compartment_4","lambda_compartment_5","lambda_compartment_6","lambda_compartment_7","lambda_compartment_8","lambda_compartment_9","mu","Total_FITC_Dextran","Dictyostelium_discoideum_AX2" ]
speciesNames=[ "FITC_Dextran_three_compartment_model_compartment_1","FITC_Dextran_three_compartment_model_compartment_2","FITC_Dextran_three_compartment_model_compartment_3","FITC_Dextran_nine_compartment_model_compartment_4","FITC_Dextran_nine_compartment_model_compartment_5","FITC_Dextran_nine_compartment_model_compartment_6","FITC_Dextran_nine_compartment_model_compartment_7","FITC_Dextran_nine_compartment_model_compartment_8","FITC_Dextran_nine_compartment_model_compartment_9" ]
