LET EL=39:LET NO=88:LET NV=57:LET G=28
GOSUB 3380
GOSUB 4400
LET LL=0
GOSUB 3310
LET P$=X$(VAL(LEFT$(D$,1)))+" "+Y$(VAL(MID$(D$,2,1)))+" "
LET J$=R$+", "+"YOU ARE "+P$+RIGHT$(D$,LEN(D$)-2)+" ":GOSUB 4830
GOSUB 3330:LET J$=""
FOR I=1 TO G-1
READ O$
LET P$=Y$(VAL(LEFT$(O$,1))):GOSUB 3350
IF F(I)=0 AND C(I)=R THEN LET J$=J$+" "+P$+" "+O$+","
NEXT I
IF R=29 AND F(48)=0 THEN LET J$=J$+" GRARGS FEASTING,"
IF R=29 AND F(48)=1 THEN LET J$=J$+" A SLEEPING GRARG,"
IF R=12 AND OR R="" THEN LET J$=J$+" A PONY,"
IF R=64 THEN LET J$=J$+" A HERMIT,"
IF R=18 AND E$(18)="N" THEN LET J$=J$+" AND OAK DOOR,"
IF R=59 AND F(68)=1 THEN LET J$=J$+" OGBAN (DEAD),"
IF J$<>"" THEN LET J$=", YOU CAN SEE"+J$
LET J$=J$+" AND YOU CAN GO "
GOSUB 4830:PRINT " ";
FOR I=1 TO LEN(E$(R)):PRINT MID$(E$(R),I,1);",";
NEXT I:PRINT:PRINT:
NEXT R$="PARDON?":PRINT "===================="
PRINT:PRINT:PRINT "WHAT WILL YOU DO NOW "P
INPUT I$
IF I$="SAVE GAME" THE GOTO 4630
LET V$="":LET T$="":LET VB=0:LET B=0
FOR I=1 TO LEN(I$)
IF MID$(I$,I,1)=" " AND V$="" THEN LET V$=LEFT$(I$,I-1)
IF MID$(I$,I+1,1)<>" " AND V$<>"" THE LET T$=MID$(I$,I+1,LEN(I$)-1):LET I=LEN(I$)
NEXT I:IF T$="" THEN LET V$=I$
IF LEN(V$)<3 THEN LET V$=V$+"0":GOTO 340
IF V$="PLAY" THEN LET V$="BLO"
LET U$=LEFT$(V$,3)
OFR I=1 TO NV:IF MID$(B$, I*3-2,3)=U$ THEN LET VB=I:LET I=NV
NEXT I:LET F(36)=0
GOSUB 3330
FOR I=1 TO NO:READ O$: IF I<=G THEN GOSUB 3350
IF T$=O$ THEN LET B=I:LET I=NO
NEXT I
IF B=0 AND F(36)=0 AND T$>"" THEN LET T$=T$+"S":LET F(36)=1:GOTO 390
IF VB=0 THEN LET VB=NV+1
IF T$="" THEN LET R$="I NEED TWO WORDS"
IF VB>NV THEN LET R$="TRY SOMETHING ELSE"
IF VB>NV AND B=0 THEN LET R$="YOU CANNOT "+I$
IF B>G OR B>0 THEN GOTO 510
IF VB=8 OR VB=9 OR VB=14 OR VB=17 OR VB=44 OR VB>54 GOTO 510
IF VB<NV AND C(B)<>0 THEN LET R$="YOU DO NOT HAVE THE "+T$:GOTO 30
IFR=56ANDF(35)=0ANDVB<>37ANDVB<>53THENR$=X1$+" HAS GOT YOU!":GOTO30
IF VB=44 OR VB=47 OR VB=19 OR VB=57 OR VB=49 THEN GOTO 540
IF R=48 AND F(63)=0 THEN LET R$=X9$:GOTO 30
LET H=VAL(STR$(R)+STR$(B))
ON INT((VB-1)/13)+1 GOTO 560,580,600,620,640
ON VB GOSUB 800,800,800,800,800,800,1220,1290,1470,1470,1750,1890
GOTO 650
ONVB-13GOSUB1960,1980,2010,3050,2870,2120,2220,2310,2380,2420,2450,2470,2520
GOTO 650
ONVB-26GOSUB2550,2580,2610,2650,2670,2700,2720,2730,2830,2800,2870,2730,2920
GOTO 650
ONVB-39GOSUB2950,2990,3010,3050,3070,2310,2990,3070,3130,2120,3190,1470,3100
GOTO 650
ON VB-52 GOSUB 2870,3150,1290,1290,3170,3200
IF F(62)=1 THEN GOTO 730
IF R=41 THEN LET F(67)=F(67)+1:IF F(67)=10 THEN LET F(56)=1:LET R$="YOU SANK!"
IF R=56 AND F(35)=0 AND C(10)<>0 THEN LET R$X1$+" GETS YOU!":LET F(56)=1
IF F(56)=0 THEN GOTO 30
GOSUB 4400:PRINT R$
PRINT "YOU HAVE FAILED IN YOUR QUEST!"
PRINT:PRINT "BUT YOU ARE GRANTED ANOTHER TRY"
GOSUB 3360:RUN
GOSUB 4400
PRINT "HOOOOOOOOORRRRRRAAAAAAAAYYYYY!"
PRINT
PRINT "YOU HAVE SUCCEDED IN YOUR"
PRINT "QUEST AND BROUGHT PEACE TO"
PRINT "THE LAND"
STOP
LET D=VB
IF D=5 THEN LET D=1
IF D=6 THEN LET D=3
IF NOT ((R=75 AND D=2) OR (R=76 AND D=4)) OR F(64)=1 THEN GOTO 850
LET R$="B USPMM TUPQT ZPV DSPTTJOH":GOSUB 4260:RETURN
IF F(64)=1 THEN LET F(64)=0
IF F(51)=1 OR F(29)=1 THEN GOTO 900
IF F(55)=1 THEN LET F(56)=1:LET R$"GRARGS HAVE GOT YOU!":RETURN
IF R=29 AND F(48)=0 THEN LET R$="GRARGS WILL SEE YOU!":RETURN
IF R=73 OR R=42 OR R=9 OR R=10 THEN LET R$=X3$:LET F(55)=1:RETURN
IF C(8)=0AND((R=52ANDD=2)OR(R=31ANDD<>3))THENLETR$="THE BOAT IS TOO HEAVY":RET
IFC(8)<>0AND((R=52ANDD=4)OR(R=31ANDD=3))THENLETR$="YOU CANNOT SWIM":RETURN
IF R=52 AND C(8)=0 AND D=4 AND F(30)=0 THEN LET R$="NO POWER!":RETURN
IF R=41 AND D=3 AND F(31)=0 THEN LET R$="UIF CPBU JT TJOLJOH!":GOSUB 4260:RETURN
IF R=33 AND D=1 AND F(32)=0 THEN LET R$="OGBAN'S BOAR BLOCKS YOUR PATH":RETURN
IF ((R=3 AND D=2) OR (R=4 AND D=4)) AND F(45)= THEN LET R$=X5$:RETURN
IF R=35 AND C(13)<>R THEN LET R$="THE ICE IS BREAKING!":RETURN
IF R=5 AND (D=2 OR D=4) THEN GOSUB 4310
IF R=4 AND D=4 THEN LET R$="PASSAGE IS TOO STEEP":RETURN
IF R=7 AND D=2 AND F(46)=0 THEN LET R$="A HUGE HOUND BARS YOUR WAY":RETURN
IF (R=38 OR R=37) AND F(50)=0 THEN LET R$="JU JT UPP EBSL":GOSUB 4260:RETURN
IFR=49AND3=2ANDF(54)=0THENLETR$="MYSTERIOUS FORCES HOLD YOU BACK":RETURN
IF R=49 AND D=3 AND F(68)=0 THEN LET R$="YOU MET OGBAN!!!":LET F(56)=1:RETURN
IF R=38 AND F(65)=0 THEN LET R$="RATS NIBBLE YOUR ANKLES":RETURN
IFR=58AND(D=1ORD=4)ANDF(66)=0THENLETR$="YOU GET CAUGHT IN THE WEBS!":RET
IF R=48 AND D=4 AND F(70)=0 THEN LET R$="THE DOOR DOES NOT OPEN":RETURN
IF R=40 AND F(47)=1 THEN LET F(68)=1
IFR=37ANDD=4ANDE$(37)="EW"THENLETR=67:LET R$="THE PASSAGE WAS STEEP!":RETURN
IF R=29 AND D=3 THEN LET F(48)=1:LET F(20)=0
IF R=8 AND D=2 THEN LET F(46)=0
LET OM=R:FOR I=1 TO LEN(E$(R))
LET K$=MID$(E$(OM),I,1)
IF (K$="N" OR K$="U") AND D=1 THEN LET R=R-10
IF K$="E" AND D=2 THEN LET R=R+1
IF (K$="S" OR K$="D") AND D=3 THEN LET R=R+10
IF K$="W" AND D=4 THEN LET R=R-1
NEXT I:LET R$="OK"
IF R=OM THEN LET R$="YOU CANNOT GO THAT WAY"
IF ((OM=75 AND D=2) OR (OM=76 AND D=4)) THEN LET R$="OK, YOU CROSSED"
IF F(29)=1 THEN LET F(39)=F(39)+1
IFF(39)>5ANDF(29)=1THENLETR$="CPPUT IBWF XPSO PVU":GOSUB4260:LETF(29)=0:C(3)=81
RETURN
GOSUB 3330:LET R$="OK":LET F(49)=0
PRINT "YOU HAVE ";
FOR I=1 TO G:READ O$:GOSUB 3350:IF I=1 AND C(1)=0 AND F(44)=1 THEN LET O$="COIN"
IF I=G AND C(5)=0 THEN GOTO 1270
IF C(I) THEN PRINT O$;",";:LET F(49)=1
NEXT I:IF F(49)=0 THEN PRINT "NOTHING"
PRINT:GOSUB 3360:RETURN
IF H=6577 THEN LET R$="HOW?":RETURN
IF H=4177 OR H=5177 THEN LET B=16:GOSUB 2380:RETURN
IF B=38 THEN LET R$="TOO HEAVY!":RETURN
IF B=4 AND F(43)=0 THEN LET R$="IT IS FIRMLY NAILED ON!":RETURN
LET CO=0:FOR I=1 TO G-1:IF C(I)=0 THEN LET CO=CO+1
NEXT I:IF CO>13 THEN LET R$="YOU CANNOT CARRY ANY MORE":RETURN
IF B>G THEN LET R$="YOU CANNOT GET THE "+T$:RETURN
IF B=0 THEN RETURN
IF C(B)<>R THEN LET R$="IT IS NOT HERE!"
IF F(B)=1 THEN LET R$="WHAT "+T$+"?"
IF C(B)=0 THEN LET R$="YOU ALREADY HAVE IT"
IF C(B)= R AND F(B)=0 THEN LET C(B)=0:LET R$="YOU HAVE THE "+T$
IF B=28 THEN LET C(5)=81
IF B=5 THEN LET C(28)=0
IF C(4)=0 AND C(12)=0 AND C(15)=0 THEN LET F(54)=1
IF B=8 AND F(30)=1 THEN LET C(2)=0
IF B=2 THEN LET F(30)=0
RETURN
LET R$="YOU SEE WHAT YOU MIGHT EXPECT!"
IF B>0 THEN LET R$="NOTHING SPECIAL"
IF B=46 OR B=88 THEN GOSUB 2550
IF H=8076 THEN LET R$="IT IS EMPTY"
IF H=8080 THEN LET R$="AHA!":LET F(1)=0
IF H=7029 THEN LET R$="OK":LET F(2)=0
IF B=20 THEN LET R$="NBUDIFT JO QPDLFU":GOSUB 4260:LET C(26)=0
IF H=1648 THEN LET R$="THERE ARE SOME LETTERS '"+G$(2)+"'"
IF H=7432 THEN LET R$"UIFZ BSF BQQMF USFFT":GOSUB 4260:LET F(5)=0
IF H=2134 OR H=2187 THEN LET R$="OK":LET F(16)=0
IF B=35 THEN LET R$="IT IS FISHY":LET F(17)=0
IF H=3438 THEN LET R$="OK":LET F(22)=0
IF H=242 THEN LET R$="A FADED INSCRIPTION"
IF(H=1443ORH=1485)ANDF(33)=0THENLETR$="B HMJNNFSJOH GSPN UIF RFQUIT":GOSUB4260
IF (H=1443 OR H=1485) AND F(33)=1 THEN LET R$="SOMETHING HERE...":LET F(12)=0
IF H=2479 OR H=2444 THEN LET R$="THERE IS A HANDLE"
IF B=9 THEN LET R$="UIF MBCFM SFBET 'QPJTPO'":GOSUB 4260
IF H=4055 THEN GOSUB 3290
IF H=2969 AND F(48)=1 THEN LET R$="VERY UGLY"
IF H=7158 OR H=7186 THEN LET R$="THERE ARE LOOSE BRICKS"
IF R=49 THEN LET R$="VERY INTERESTING!"
IF B=52 OR B=82 OR B=81 THEN LET R$="INTERESTING!"
IF H=6978 THEN LET R$="THERE IS A WOODEN DOOR"
IF H=6970 THEN LET R$="YOU FOUND SOMETHING":LET F(4)=0
IF H=2066 THEN LET R$="A LARGE CUBPOARD IN THE CORNER"
IF H=6865 OR H=6853 THEN LET R$="THERE ARE NINE STONES"
IF H=248 THEN LET R$="B GBEFE XPSE - 'N S I T'":GOSUB 4260
RETURN
IF R=64 THEN LET R$="HE GIVES IT BACK!"
IF H=6425 THEN GOSUB 3210
IF R=75 OR R=76 THEN LET R$="HE DOES NOT WANT IT"
IF B=62 AND F(44)=0 THEN LET R$="YOU HAVE RUN OUT!"
IF (H=7562 OR H=7662) AND F(44)>0 AND C(1)=0 THENLETR$="HE TAKES IT":LETF(64)=1
IF F(64)=1 THEN LET F(44)=F(44)-1:IF F(44)=0 THEN LET C(1)=81
IF B=1 THEN LET R$="HE TAKES THEM ALL!":LET C(1)=B1:LET F(64)=1:LET F(44)=0
IF H=2228 AND C(5)=81 THEN LET R$=XB$+"NORTH":LET C(28)=81:LET R=12
IF (H=2228 AND C(5)=0) OR H=225 THEN LET R$=XB$+"NORTH":LET R=12
IF (H=1228 AND C(5)=0) OR H=125 THEN LET R$=XB$+"SOUTH":LET R=22
IF R=7 OR R=33 THEN LET R$="HE EATS IT!":LET C(8)=81
IF H=711 THEN LET F(46)=1:LET R$="HE IS DISTRACTED"
IF H=385 OR H=3824 LET R$="THEY SCURRY AWAY":LET C(B)=B1:LET F(65)=1
RETURN
LET R$="YOU SAID IT"
IF B=84 THEN LET R$="YOU MUST SAY THEM ONE BY ONE!":RETURN
IF R<>47 OR B<71 OR B>75 OR C(27)<>0 THEN RETURN
IF B=71 AND F(60)=0 THEN LET R$=X7$:LET F(60)=1:RETURN
IF B=72 AND F(60)=1 AND F(61)=0 AND F(61)=1 THEN LET R$=X8$:LET F(61)=1:RETURN
IF B=(F(52)+73) AND F(60)=1 AND F(61)=1 THEN LET F(62)=1:RETURN
LET R$="THE WRONG SACRED WORD!":LET F(56)=1:RETURN
IF B=5 OR B=10 THEN GOSUB 1290
RETURN
IF B=3 THEN LET F(29)=1:LET R$="ZPV BSF JOWJTJCMF":LET F(55)=0:GOSUB 4260
IF B=20 THEN LET F(51)=1:LET R$="ZPV BSF EJTHVJTFE":LET F(55):0:GOSUB 4260
RETURN
IF B=2 OR B=14 THEN LET R$="NOTHING TO TIE IT TO!"
IF H=7214 THEN LET R$="IT IS TIED":LET C(14)=72:LET F(53)=1
IF H=722 THEN LET R$="OK":LET F(40)=1:LET C(2)=72
RETURN
IF H=1547 AND F(38)=1 THEN LET R$="ALL RIGHT":LET R=16
IF B=14 OR B=2 THEN LET R$="NOT ATTACHED TO ANYTHING!"
IF H=5414 AND C(14)=54 THEN LET R$="YOU ARE AT THE TOP"
IF H=7214 AND F(53)=1 THEN LET R$="GOING DOWN":LET R=71
IF H=722 AND F(40)=1 THEN LET R=71:LET R$="IT IS TORN":LET C(2)=81:LET F(40)=0
IF H=7114 AND F(52)=1 THEN LET C(14)=71:LET F(53)=0:LET R$="IT FALLS DOWN-BUMP"
RETURN
IF H=522 THEN LET R$="OK":LET F(30)=1
IF B=1 OR B=62 OR B=5 OR B=28 OR B=11 OR B=24 THEN GOSUB 1750
IF H=416 THEN LET R$="ZPV IVWF LFQU BGMPBU":LET F(31)=1:GOSUB 4260:RETURN
IF H=4116 THEN LET R$="IT IS NOT BIG ENOUGH!":RETURN
IF B=18 OR B=7 THEN GOSUB 2470
IF B=13 THEN GOSUB 2730
IF B=19 THEN GOSUB 3070
IF B=10 THEN GOSUB 2870
IF B=16 OR B=6 THEN GOSUB 2380
RETURN
IF B=76 OR B=38 THEN GOSUB 1470
IF H=2030 THEN LET F(9)=0:LET R$="OK"
IF H=6030 THEN LET R$="OK":LET F(3)=0
IF H=2444 OR H=1870 THEN LET R$="YOU ARE NOT STRONG ENOUGH"
IF H=3756 THEN LET R$="A PASSAGE!":LET E(37)="EW"
IF H=5960 THEN GOSUB 3260
IF H=6970 THEN LET R$="IT FALLS OFF ITS HINGES"
IF H=4870 THEN LET R$="IT IS LOCKED"
RETURN
IF B>G THEN LET R$="IT DOES NOT BURN"
IF B=26 THEN LET R$="YOU LIT THEM"
IF H=3826 THEN LET R$="NOT BRIGHT ENOUGH"
IF (B=23 OR H=6970) AND C(26)<>0 THEN LET R$="OP NBUDIFT":GOSUB 4260
IF B=23 AND C(26)=0 THEN LET R$="A BRIGHT "+V$:LET F(50)=1
IF H=6970 AND C(26)=0 THEN LET F(43)=1:LET R$="IT HAS TURNED TO ASHES"
RETURN
IF (B=16 OR B=6) AND (R=41 OR R=51) THEN LET R$="YOU CAPSIZED!":LET F(56)=1
IF H=6516 AND C(16)=0 THEN LET R$="IT IS NOW FILL":LET F(34)=1
IF H=656 HTEN LET R$="IT LEAKS OUT!"
RETURN
IF B<>22 OR R<>15 THEN LET R$="DOES NOT GROW!":RETURN
LET R$="OK":LET F(37)=1
RETURN
IF B=22 AND F(37)=1 AND F(34)=1 THEN LET R$=X2$:LET F(38)=1:GOSUB 4260
RETURN
IF B=7 OR B=18 THEN LET R$="THWACK!"
IF H=5818 THEN LET R$="YOU CLEARED THE WEBS":LET F(66)=1
IF H=187 THEN LET R$="THE DOOR BROKE!":LET E$(18)="NS":LET E$(28)="NS"
IF H=717 THEN LET R$="YOU BROKE THROUGH":LET E$(71)="N"
RETURN
IF B=16 THEN LET B=22:GOSUB 2450
IF H=499 THEN LET R$="WHERE?"
RETURN
IF H=4337 THEN LET VB=2:GOSUB 800:RETURN
IF R=36 THEN LET R$="YOU FOUND SOMETHING":LET F(13)=0
RETURN
IF R=76 THEN LET VB=4:GOSUB 800:RETURN
IF R=75 THEN LET VB=2:GOSUB 800
RETURN
IF (B=3 AND F(29)=1) THEN LET R$="TAKEN OFF":LET F(29)=0
IF (B=20 AND F(51)=1) THEN LET R$="OK":LET F(51)=0
IF B=36 OR B=50 THEN GOSUB 2950
RETURN
IF H=3859 OR H=3339 OR H=1241 OR H=751 THEN LET R$="WITH WHAT?"
RETURN
IF H=240 THEN LET R$="IT GOES ROUND"
IF H=2445 THEN LET R$="UIF HBUFT PQFO, UIF QPPM FNQUJFT":LET F(33)=1:GOSUB 4260
RETURN
IF R=14 OR R=51 THEN LET R$="YOU HAVE DROWNED":LET F(56)=1
RETURN
LET R$="HOW?":RETURN
IF B=0 OR B>G THEN RETURN
LET C(B)=R:LET R$="DONE"
IF H=418 OR H=518 THEN LET R$="YOU HAVE DROWNED!"LET F(56)=1
IF B=8 AND F(30)=1 THEN LET C(2)=R
IF B=16 AND F(34)=1 THEN LET R$="YOU LOST THEN WATER!":LET F(34)=0
IF B=2 AND F(30)=1 THEN LET F(30)=0
RETURN
IF B=62 AND F(44)=0 THEN LET R$="YOU DO NOT HAVE ANY"
IF H=5762 AND C(1)=0 AND F(44)>0 THEN GOSUB 3230
RETURN
IF B=0 OR B>G THEN RETURN
LET R$="DID NOT GO FAR!":LET C(B)=R
IF H=3317 THEN LET R$="ZPV DBVHIU UIF CPBS":LET F(32)=1:GOSUB 4260
RETURN
IF B=10 THEN LET R$="B OJDF UVOF":GOSUB 4260
IF H=5233 THEN LET R$="WHAT WITH?"
IF B=83 THEN LET R$="HOW, O MUSICAL ONE?"
IF H=5610 THEN LET F(35)=1:LET R$=X1$" IS FREE!":LET E$(56)="NS"
RETURN
IF B=0 OR B>G THEN RETURN
IF B=5 OR B=25 THEN LET R$"YUM YUM":LET C(B)=81
RETURN
IF R=4 AND B=50 THEN LET F(45)=1:LET R$="YOU REVEALED A STEEP PASSAGE"
IF R=3 AND B=50 THEN LET R$="YOU CANNOT MOVE RUBBLE FROM HERE"
IF H=7136 THEN LET R$="THEY ARE WEDGED IN!"
RETURN
IF (B=67 OR B=68) AND C(9)=0 AND R=49 THEN LET R$="OK":LET F(47)=1
RETURN
IF R<>27 OR B<>63 THEN RETURN
PRINT:PRINT "HOW MANY TIMES?":INPUT MR:IF MR=0 THEN PRINT "A NUMBER":GOTO 3020
IF MR=F(42) THEN LET R$="A ROCK DOOR OPENS":LET E$(27)="EW":RETURN
LET R$="ZPV IBWF NJTUSFBUFE UIF CFMM!":LET F(56)=1:GOSUB 4260:RETURN
IF H=5861 THEN LET H=3818:GOSUB 2470
RETURN
IF (H=4864 OR H=4819) AND C(19)=0 THEN LET R$=X6$:LET F(63)=1:GOSUB 4260
IF B=27 THEN GOSUB 1290
RETURN
IF G=7549 OR H=7649 THEN LET R$="WHAT WITH?"
IF B=1 OR B=62 THEN GOSUB 1750
RETURN
IF H=4870 AND C(21)=0 THEN LET R$="THE KEY TURNS!":LET F(70)=1
RETURN
IF H=1870 THEN LET R$="HOW?"
RETURN
IF R=48 THEN LET R$="HOW?"
RETURN
LET R$="ARE YOU THIRSTY?"
RETURN
LET R$="HE TAKES IT AND SAYS '"+STR$(F(42))+" RINGS ARE NEEDED'":LET C(25)=81
RETURN
LET F(44)=F(44)-1:LET R$="A NUMBER APPEARS - "+STR$(F(41))
IF F(44)=0 THEN LET C(1)=81
RETURN
PRINT:LET R$="XIBU JT UIF DPEF":GOSUB 4260:PRINT R$:INPUT CN
LET R$="WRONG!":IF CN=F(41) THEN LET R$="IT OPENS":LET F(21)=0
RETURN
LET T=R:LET R=F(F(52)+57):GOSUB 3310:LET R=T
LET R$=X4+RIGHT$(D$,LEN(D$)-2):RETURN
RESTORE:FOR I=1 TO R:READ D$:NEXT I
RETURN
RESTORE:FOR I=1 TO 80:READ D$:NEXT I
RETURN
LET D$=RIGHT$(D$,LEN(D$)-1):RETURN
PRINT "PRESS RETURN TO CONTINUE"
INPUT Z$:RETURN
DIM C(G),E$(80),F(70),X$(6),Y$(6),G$(2)
GOSUB 3330
FOR I=1 TO NO:READ T$:NEXT I
FOR I=1 TO 6:READ X$(I),Y$(I):NEXT I
LET B$="NOOEOOSOOWOOUOODOOIVGETTAKEXAREAGIVSAYPICWEATIECLIRIGUSEOPE"
LET B$=B$+"LIGFILPLAWATSWIEMPENTCROREMFEETURDIVAILEATHRINSBLODRDEATMOV"
LET B$=B$+"INTRINCUTHOLBURPOISHOUNLWITDRICOUPAYMAKBRESTEGATREF"
LET X6$="ZPV SFGMFDUFE UIF XJABSET HMBSF! IF JT EFBE"
LET X1$="THE GHOST OF THE GOBLIN GUARDIAN"
LET X2$="B MBSHF WJOF HSPXT JO TFDPOET!"
LET X3$="A GRARG PATROL APPROACHES"
LET X4$="MAGIC WORDS LIE AT THE CROSSROADS, THE FOUNTAIN AND THE "
LET X5$="A PILE OF RUBBLE BLOCKS YOUR PATH"
LET X7$="THE MOUNTAIN RUMBLES!"
LET X8$="TOWERS FALL DOWN!"
LET X9$="THE WIZARD HAS YOU IN HIS GLARE"
LET XB$="HE LEADS YOU "
GOSUB 4400:PRINT "DO YOU WANT TO"
PRINT:PRINT "   1. START A NEW GAME"
PRINT "OR 2. CONTINUE A SAVED GAME"
PRINT:PRINT:PRINT "TYPE-IN EITHER 1 OR 2"
INPUT C:IF C<>1 AND C<>2 THEN GOTO 3580
IF C=1 THEN GOSUB 4450
IF C=2 THEN GOSUB 4600
RETURN
DATA 11HALF-DUG GRAVE,12GOBLIN GRAVEYARD
DATA 11HOLLOW TOMB,23STALACTITES AND STALAGMITES
DATA 11MAZE OF TUNNELS,11VAULTED CAVERN
DATA 23HIGH GLASS GATES,12ENTRANCE HALL TO THE PALACE
DATA 31GRARG SENTRY POST,12GUARD ROOM
DATA 31MARSHY INLET,23RUSTY GATES
DATA 12GAMEKEEPERS COTTAGE,31MISTY POOL
DATA 11HIGH-WALLED GARDEN,14INSCRIBED CAVERN
DATA 34ORNATE FOUNTAIN,11DANK CORRIDOR
DATA 12LONG GALLERY,12KITCHENS OF THE PALACE
DATA 34OLD KILN,44OVERGROWN TRACK
DATA 31DISUSED WATERWHEEL,33SLUICE GATES
DATA 11GAP BETWEEN SOME BOULDERS,41PERILOUS PATH
DATA 31SILVER BELL IN THE ROCK,12DUNGEONS OF THE PALLACE
DATA 11BANQUETING HALL,42PALACE BATTLEMENTS
DATA 44ISLAND SHORE,31BEACHED KETCH
DATA 13BARREN COUNTRYSIDE,33SACKS ON THE UPPER FLOOR
DATA 46FROZEN POND,21MOUNTAIN HUT
DATA 31ROW OF CASKS,11WINE CELLAR
DATA 12HALL OF TAPESTRIES,11DUSTY LIBRARY
DATA 13ROUGH WATER,11PLOUGHED FIELD
DATA 55OUTSIDE A WINDMILL,42LOWER FLOOR OF THE MILL
DATA 44ICY PATH,41SCREE SLOPE
DATA 12SILVER CHAMBER,12WIZARDS LAIR
DATA 11MOSAIC-FLOORED HALL,12SILVER THRONE ROOM
DATA 12MIDDLE OF THE LAKE,42EDGE OF AN ICY LAKE
DATA 41PITTED TRACK,41HIGH PINNACLE

