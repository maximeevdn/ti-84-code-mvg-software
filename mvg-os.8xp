:ClrHome
:1122→V:050984→D:"MAXIME"→Str2:" ABCDEFGHIJKLMNOPQRSTUVWXYZ"→Str9:0→S
:" "→Str3
:
:Lbl L
:ClrHome:Disp "MVG SOFTWARE V6.7","----------------","LOGIN PIN:"
:Input Str1
:If Str1="050984":2→S
:If Str1="050984":Goto N
:If Str1="1122":1→S
:If Str1="1122":Goto N
:If Str1="FREE":0→S
:If Str1="FREE":Goto N
:Disp "ACCESS DENIED":Pause :Goto L
:
:Lbl N
:ClrHome:Disp "WELCOME, USER.","IDENTIFY YOURSELF."
:Input "NAME: ",Str3
:ClrHome:Disp "ACCESS GRANTED","HELLO "+Str3:Pause 
:
:Lbl T
:Menu("LANGUAGE","ENGLISH",EN,"DUTCH",NL)
:Lbl EN:1→L:Goto B
:Lbl NL:2→L:Goto B
:
:Lbl B
:ClrHome:Disp "MVG-CORE LOADING","[##########]"
:For(I,1,15):For(J,1,20):End:End
:
:Lbl M
:ClrHome
:Disp "--- MVG DESKTOP ---"
:If S=0:Menu("HOME","MATH PRO",A1,"ORION",G1,"LOGOUT",E1)
:If S=1:Menu("HOME","MATH PRO",A1,"PHYSICS",P1,"MVGNET",W4,"ORION",G1,"LOGOUT",E1)
:If S=2:Menu("HOME","MATH PRO",A1,"PHYSICS",P1,"MVGNET",W4,"ORION",G1,"SYS INFO",X5,"LOGOUT",E1)
:
:Lbl A1
:ClrHome:Menu("MATH APPS","LINEAR",L1,"QUADRATIC",L2,"EQUATION SOLV",L4,"BACK",M)
:Lbl L1:ClrHome:Input "A:",A:Input "B:",B:Input "C:",C:Disp "X=",(C-B)/A:Pause :Goto A1
:Lbl L2:ClrHome:Input "A:",A:Input "B:",B:Input "C:",C:B²-4*A*C→D:Disp "D:",D:If D≥0:Disp "X1:",(-B+√(D))/(2*A):If D>0:Disp "X2:",(-B-√(D))/(2*A):Pause :Goto A1
:Lbl L4:ClrHome:Disp "AX+BY=C","DX+EY=F":Input "A:",A:Input "B:",B:Input "C:",C:Input "D:",D:Input "E:",E:Input "F:",F:(C*E-B*F)/(A*E-B*D)→X:(A*F-C*D)/(A*E-B*D)→Y:Disp "X:",X,"Y:",Y:Pause :Goto A1
:
:Lbl P1
:ClrHome:Menu("PHYSICS APPS","VELOCITY",P2,"ENERGY",P3,"FORCE",P4,"BACK",M)
:Lbl P2:ClrHome:Input "DIST(M):",A:Input "TIME(S):",B:Disp "V(M/S):",A/B:Pause :Goto P1
:Lbl P3:ClrHome:Input "MASS(KG):",A:Input "VEL(M/S):",B:Disp "EK(J):",0.5*A*B²:Pause :Goto P1
:Lbl P4:ClrHome:Input "MASS(KG):",A:Input "ACC(M/S2):",B:Disp "F(N):",A*B:Pause :Goto P1
:
:Lbl X5
:ClrHome:Menu("SYS SETTINGS","USER PROFILE",X1,"MVG HARDWARE",X4,"SUPPORT/BUGS",X3,"BACK",M)
:
:Lbl X1
:ClrHome:Disp "USER: "+Str3,"RANK: ADMIN","OS: V6.7-EN","STATUS: STABLE":Pause :Goto X5
:
:Lbl X4
:ClrHome:Disp "--- MVG HW ---","BOARD: MVG-V2 PRO","CLOCK: 5.0 GHZ","SW-CODE: 1278912":Pause :Goto X5
:
:Lbl X3
:ClrHome:Disp "--- SUPPORT ---","REPORT BUGS AT:","GITHUB ISSUES","VALUATION: $10":Pause :Goto X5
:
:Lbl W4
:ClrHome:Menu("MVGNET","ENCODE",W1,"DECODE",W2,"BACK",M)
:Lbl W1:ClrHome:Input "CHAR: ",Str1:1→M:While Str1≠sub(Str9,M,1) and M<27:M+1→M:End:randInt(10,99)→K:M+K→G:ClrHome:Disp "CODE:",G,"KEY:",K:Pause :Goto W4
:Lbl W2:ClrHome:Input "CODE:",G:Input "KEY:",K:G-K→M:sub(Str9,M,1)→Str1:Disp "DECODED:",Str1:Pause :Goto W4
:
:Lbl G1
:ClrHome:Disp "--- ORION ---","1:DOOR 1","2:DOOR 2","3:DOOR 3"
:Input "CHOICE:",D
:If D=2:Disp "YOU WIN!":If D=2:Pause :If D=2:Goto M
:Disp "GAME OVER.":Pause :Goto G1
:
:Lbl E1
:ClrHome:Disp "SHUTTING DOWN...":Stop
