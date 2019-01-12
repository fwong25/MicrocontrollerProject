LIST p=18f4520
#include<p18f4520.inc>
    CONFIG OSC = INTIO67
    CONFIG WDT = OFF
	org 0x00
Initial:
    ;***********
start:
    ;Calculate 10110101 NAND 01111100 and store in LATD
    clrf WREG ;Array value and count for the loop
    movlw b'10110101'
    andlw b'01111100'
    xorlw b'11111111'
    movwf LATD
    
    ;Calculate 10010110 NOR 01101001 and store in LATC
    clrf WREG
    movlw b'10010110'
    iorlw b'01101001'
    xorlw b'11111111'
    movwf LATC
end


