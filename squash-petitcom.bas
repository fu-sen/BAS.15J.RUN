10 'ﾌﾟﾁｺﾝ3ｺﾞｳ ｲﾜﾕﾙ ｽｶｯｼｭ
15 IF VER()>11000 UART 1
20 VIDEO 0:?CHR$(128,4,5,1) 
30 ?CHR$(128,5,7,0,#A6)
40 ?CHR$(128,6,8,0,0,1)
50 ?CHR$(128,5,7,1,#A6)
60 ?CHR$(128,6,8,1,7,1)
70 ?CHR$(128,5,7,2,#A6)
80 ?CHR$(128,6,8,2,14,1)
90 ?CHR$(128,5,7,3,#37)
100 ?CHR$(128,5,7,4,#9B)
110 ?CHR$(128,4,6,#1B)
120 S=0:X=RND(72):Y=0:N=1:P=40
130 IF Y<40 M=1 ELSE M=-1
140 ?CHR$(128,6,8,3,X,Y)
150 ?CHR$(128,6,8,4,P,40)
160 WAIT 5
170 IF X+M<0 OR X+M>71 M=-M
180 IF Y+N<0 N=1
190 IF Y+N>45 GOTO 300
200 IF Y+N<35 OR Y+N>45 GOTO 260
210 IF X-P<-6 OR X-P>6 GOTO 260
220 S=S+1:N=-1
230 ?CHR$(128,5,7,0,#A6+S/100)
240 ?CHR$(128,5,7,1,#A6+S%100/10)
250 ?CHR$(128,5,7,2,#A6+S%10)
260 X=X+M:Y=Y+N
270 P=P-BTN(LEFT)*2+BTN(RIGHT)*2
280 P=(P+72)%72
290 GOTO 140
300 IF !BTN(SPACE) GOTO 300
310 ?CHR$(128,4,6,#FF)
320 ?CHR$(128,4,5,0):VIDEO 1
