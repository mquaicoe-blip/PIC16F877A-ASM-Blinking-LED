;************************************************
    ;Lab 1.2
    ;Description: Blinking LED in Assembly language
    ;Author: Michael Quaicoe 2026  
    
 ;*************************************************** 
 
; declaring constants 
 
 ADCON1 equ 9fh ; BANK1
 STATUS equ 03h ; for selecting BANK
    RP0 equ 05h
    RP1 equ 06h
 PORTA equ 05h ; BANK0
 TRISA equ 85h ; BANK1
 
 COUNTER1 equ 20h 
 COUNTER2 equ 21h 
 COUNTER3 equ 22h 
 
 org 00h
 clrw ; clear w register
 
 BCF STATUS, RP0
 BCF STATUS, RP1 
 CLRF PORTA ; initialise PORTA 

 BSF STATUS, RP0 ; Switch to Bank 1
 MOVLW 0x06  ; Configure all pins of PORTA as digital
 MOVWF ADCON1 
 MOVLW 0x00  ; Set PORTA as output 
 MOVWF TRISA 

 BCF STATUS, RP0 ; Back to Bank 0
 BCF STATUS, RP1
 
SART
    ; --- LED 1: RA0 ---
    MOVLW 0x01    
    MOVWF PORTA   
    
    MOVLW 0x25    ; Delay start
    MOVWF COUNTER3
D1_OUT MOVLW 0xff
    MOVWF COUNTER2
D1_MID MOVLW 0xff
    MOVWF COUNTER1
D1_INN DECFSZ COUNTER1, 1 
    GOTO D1_INN     
    DECFSZ COUNTER2, 1 
    GOTO D1_MID     
    DECFSZ COUNTER3, 1 
    GOTO D1_OUT

    ; --- LED 2: RA1 ---
    MOVLW 0x02    
    MOVWF PORTA   
    
    MOVLW 0x25    ; Delay start
    MOVWF COUNTER3
D2_OUT MOVLW 0xff
    MOVWF COUNTER2
D2_MID MOVLW 0xff
    MOVWF COUNTER1
D2_INN DECFSZ COUNTER1, 1 
    GOTO D2_INN     
    DECFSZ COUNTER2, 1 
    GOTO D2_MID     
    DECFSZ COUNTER3, 1 
    GOTO D2_OUT

    ; --- LED 3: RA2 ---
    MOVLW 0x04    
    MOVWF PORTA   
    
    MOVLW 0x25    ; Delay start
    MOVWF COUNTER3
D3_OUT MOVLW 0xff
    MOVWF COUNTER2
D3_MID MOVLW 0xff
    MOVWF COUNTER1
D3_INN DECFSZ COUNTER1, 1 
    GOTO D3_INN     
    DECFSZ COUNTER2, 1 
    GOTO D3_MID     
    DECFSZ COUNTER3, 1 
    GOTO D3_OUT
     
    GOTO SART ; Repeat the sequence
END