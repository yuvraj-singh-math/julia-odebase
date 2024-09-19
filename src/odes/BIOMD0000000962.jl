# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24,k25,k26,k27,k28,k29,k30,k31,k32,k33,k34,k35,k36,k37,k38,k39,k40,k41,k42,k43,k44,k45,k46,k47,k48,k49,k50,k51,k52,k53,k54,k55,k56,k57,k58,k59,k60,k61,k62,k63,k64,k65,k66,k67,k68,k69,k70,k71,k72,k73)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20","k21","k22","k23","k24","k25","k26","k27","k28","k29","k30","k31","k32","k33","k34","k35","k36","k37","k38","k39","k40","k41","k42","k43","k44","k45","k46","k47","k48","k49","k50","k51","k52","k53","k54","k55","k56","k57","k58","k59","k60","k61","k62","k63","k64","k65","k66","k67","k68","k69","k70","k71","k72","k73"])
polRing,(x1,x2,x3,x4,x5)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5"])
chemSystem=[(-1)*k72*k38*k55*x1*x2/(k54*k48 + k50*k47 + k49*k46)/k72, (1*k72*k38*k55*x1*x2/(k54*k48 + k50*k47 + k49*k46) + (-1)*k72*(k54*(k53*k62 + k52*k59 + k51*k56) + k50*(k53*k61 + k52*k58) + k49*(k53*k60 + k52*k57))*x2)/k72, (1*k72*(k54*(k53*k62 + k52*k59 + k51*k56) + k50*(k53*k61 + k52*k58) + k49*(k53*k60 + k52*k57))*x2 + (-1)*k72*(k63 + (1 - k63)*k71)*x3)/k72, 1*k72*(k63 + (1 - k63)*k71)*x3/k72 ]
constraints=[ x5 - x4 + x3 + x2, 1*k72*x1 + 1*k72*x2 + 1*k72*x3 + 1*k72*x4 - k72*k73 ]
ID="BIOMD0000000962"
pol=true
mass_bool=false
rev=0
irr=3
def=0
rat=true
desc="Zhao2020 - SUQC model of COVID-19 transmission dynamics in Wuhan, Hubei, and China"
stoichMatrix=[ [ -1, 0, 0], [ 1,-1, 0], [ 0, 1,-1], [ 0, 0, 1], [ 0, 0, 0 ] ]
reconStoichMatrix=[ [ -1, 0, 0], [ 1,-1, 0], [ 0, 1,-1], [ 0, 0, 1], [ 0, 0, 0 ] ]
kineticMatrix=[ [ 1,0,0], [ 0,1,0], [ 0,0,1], [ 0,0,0], [ 0,0,0 ] ]
paramValues=[ 1,0,0,1,0,0,11773//2500,63//1000,1//20,0,741699//2500000,1//20,9010000,9010000,48000000,1335000000,11773//2500,63//1000,1//20,303//400,3917//10000,643//10000,4797//10000,1237//2000,161//500,2967//500,1//20,1//20,6079//10000,61//125,957//5000,15283//10000,1941//10000,1//20,5753//10000,5157//10000,2189//10000,11773//2500,4797//10000,5753//10000,6079//10000,303//400,15283//10000,2967//500,11773//2500,1335000000,48000000,9010000,0,0,0,0,1,1,63//1000,1237//2000,5157//10000,61//125,3917//10000,1941//10000,1//20,63//1000,1//20,161//500,2189//10000,957//5000,643//10000,1//20,1//20,1//20,0,1,9010258 ]
paramNames=[ "Trigger_Stage_I","Trigger_Stage_II","Trigger_Stage_III","Trigger_Wuhan","Trigger_Hubei","Trigger_China","R","gamma_1","gamma_2","sigma","alpha","beta","Total_Pop","Total_Pop_Wuhan","Total_Pop_Hubei","Total_Pop_China","R_Stage_I_Wuhan","gamma_1_Stage_I_Wuhan","gamma_2_Stage_I_Wuhan","R_Stage_II_Wuhan","gamma_1_Stage_II_Wuhan","gamma_2_Stage_II_Wuhan","R_Stage_III_Wuhan","gamma_1_Stage_III_Wuhan","gamma_2_Stage_III_Wuhan","R_Stage_I_Hubei","gamma_1_Stage_I_Hubei","gamma_2_Stage_I_Hubei","R_Stage_II_Hubei","gamma_1_Stage_II_Hubei","gamma_2_Stage_II_Hubei","R_Stage_I_China","gamma_1_Stage_I_China","gamma_2_Stage_I_China","R_Stage_II_China","gamma_1_Stage_II_China","gamma_2_Stage_II_China","ModelValue_6","ModelValue_22","ModelValue_34","ModelValue_28","ModelValue_19","ModelValue_31","ModelValue_25","ModelValue_16","ModelValue_15","ModelValue_14","ModelValue_13","ModelValue_5","ModelValue_4","ModelValue_2","ModelValue_1","ModelValue_0","ModelValue_3","ModelValue_7","ModelValue_23","ModelValue_35","ModelValue_29","ModelValue_20","ModelValue_32","ModelValue_26","ModelValue_17","ModelValue_8","ModelValue_24","ModelValue_36","ModelValue_30","ModelValue_21","ModelValue_33","ModelValue_27","ModelValue_18","ModelValue_9","China","__cm_k73" ]
speciesNames=[ "Susceptible","Unquarantined_Infected","Quarantined_Infected","Confirmed_Infected","Cumulative_Infected" ]
