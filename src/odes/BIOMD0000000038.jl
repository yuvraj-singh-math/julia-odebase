# scraped from ODEBASE, all credit goes to them
using Oscar;
paramsRing,(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24,k25,k26,k27,k28,k29)=rational_function_field(QQ,["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10","k11","k12","k13","k14","k15","k16","k17","k18","k19","k20","k21","k22","k23","k24","k25","k26","k27","k28","k29"])
polRing,(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17)=polynomial_ring(paramsRing,["x1","x2","x3","x4","x5","x6","x7","x8","x9","x10","x11","x12","x13","x14","x15","x16","x17"])
chemSystem=[((-1)*k1*(k2*k22*x1 - k3*x2) + 1*k1*(k8*x5 - k9*x1*x6))/k1, (1*k1*(k2*k22*x1 - k3*x2) + (-1)*k1*(k4*x2 - k5*k23*x3))/k1, (1*k1*(k4*x2 - k5*k23*x3) + (-1)*k1*(k6*x3*x4 - k7*x5))/k1, ((-1)*k1*(k6*x3*x4 - k7*x5) + 1*k1*(k12*x8 - k13*x4*x9))/k1, (1*k1*(k6*x3*x4 - k7*x5) + (-1)*k1*(k8*x5 - k9*x1*x6))/k1, (1*k1*(k8*x5 - k9*x1*x6) + (-1)*k1*(k10*x6*x7 - k11*x8))/k1, ((-1)*k1*(k10*x6*x7 - k11*x8) + 1*k1*(k16*x11 - k17*x7*x12))/k1, (1*k1*(k10*x6*x7 - k11*x8) + (-1)*k1*(k12*x8 - k13*x4*x9))/k1, (1*k1*(k12*x8 - k13*x4*x9) + (-1)*k1*(k14*x9*x10 - k15*x11))/k1, ((-1)*k1*(k14*x9*x10 - k15*x11) + 1*k1*(k20*x13 - k21*x10*k24))/k1, (1*k1*(k14*x9*x10 - k15*x11) + (-1)*k1*(k16*x11 - k17*x7*x12))/k1, (1*k1*(k16*x11 - k17*x7*x12) + (-1)*k1*(k18*x12*k25 - k19*x13))/k1, (1*k1*(k18*x12*k25 - k19*x13) + (-1)*k1*(k20*x13 - k21*x10*k24))/k1, 0, 0, 0, 0 ]
constraints=[ 1*k1*x1 + 1*k1*x2 + 1*k1*x3 + 1*k1*x5 - k1*k26, 1*k1*x4 + 1*k1*x5 + 1*k1*x6 + 1*k1*x8 - k1*k27, 1*k1*x7 + 1*k1*x8 + 1*k1*x9 + 1*k1*x11 - k1*k28, 1*k1*x10 + 1*k1*x11 + 1*k1*x12 + 1*k1*x13 - k1*k29 ]
ID="BIOMD0000000038"
pol=true
mass_bool=true
rev=10
irr=0
def=0
rat=true
desc="Rohwer2000_Phosphotransferase_System"
stoichMatrix=[ [ -1, 0, 0, 1, 0, 0, 0, 0, 0, 0], [ 1,-1, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 1,-1, 0, 0, 0, 0, 0, 0, 0], [ 0, 0,-1, 0, 0, 1, 0, 0, 0, 0], [ 0, 0, 1,-1, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 1,-1, 0, 0, 0, 0, 0], [ 0, 0, 0, 0,-1, 0, 0, 1, 0, 0], [ 0, 0, 0, 0, 1,-1, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 1,-1, 0, 0, 0], [ 0, 0, 0, 0, 0, 0,-1, 0, 0, 1], [ 0, 0, 0, 0, 0, 0, 1,-1, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 1,-1, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 1,-1], [ -1, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 1, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 1], [ 0, 0, 0, 0, 0, 0, 0, 0,-1, 0 ] ]
reconStoichMatrix=[ [ -1, 1, 0, 0, 0, 0, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 1,-1,-1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 1,-1,-1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0,-1, 1, 0, 0, 0, 0, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 1,-1,-1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 1,-1,-1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0,-1, 1, 0, 0, 0, 0, 1,-1, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 1,-1,-1, 1, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-1,-1, 1, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,-1, 1, 0, 0, 0, 0, 1,-1], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-1,-1, 1, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-1,-1, 1, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-1,-1, 1], [ -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 1,-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-1], [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,-1, 1, 0, 0 ] ]
kineticMatrix=[ [ 1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0], [ 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1], [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0 ] ]
paramValues=[ 1,1960,480000,108000,294,14000,14000,84000,3360,21960,21960,4392,3384,880,880,2640,960,260,389,4800,27//5000,2800,900,50,500,5,50,40,10 ]
paramNames=[ "compartment","__lp_r2_k1f","__lp_r2_k1r","__lp_r3_k2f","__lp_r3_k2r","__lp_r4_k3f","__lp_r4_k3r","__lp_r5_k4f","__lp_r5_k4r","__lp_r6_k5f","__lp_r6_k5r","__lp_r7_k6f","__lp_r7_k6r","__lp_r8_k7f","__lp_r8_k7r","__lp_r9_k8f","__lp_r9_k8r","__lp_r10_k9f","__lp_r10_k9r","__lp_r11_k10f","__lp_r11_k10r","PEP","Pyr","GlcP","Glc","__cm_k26","__cm_k27","__cm_k28","__cm_k29" ]
speciesNames=[ "EI","PyrPI","EIP","HPr","EIPHPr","HPrP","EIIA","HPrPIIA","EIIAP","EIICB","EIIAPIICB","EIICBP","EIICBPGlc","PEP","Pyr","GlcP","Glc" ]
