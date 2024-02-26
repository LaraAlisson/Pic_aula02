
_main:

;aula001_helo_world.c,3 :: 		void main() {
;aula001_helo_world.c,5 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;aula001_helo_world.c,6 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;aula001_helo_world.c,7 :: 		TRISA = 0b00000000;
	CLRF       TRISA+0
;aula001_helo_world.c,8 :: 		PORTA = 0b00000000;
	CLRF       PORTA+0
;aula001_helo_world.c,9 :: 		TRISD = 0b00000000;
	CLRF       TRISD+0
;aula001_helo_world.c,10 :: 		PORTD = 0b00000000;
	CLRF       PORTD+0
;aula001_helo_world.c,12 :: 		while(1)
L_main0:
;aula001_helo_world.c,14 :: 		RB0_bit = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;aula001_helo_world.c,15 :: 		RA0_bit = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;aula001_helo_world.c,16 :: 		PORTD++;
	INCF       PORTD+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTD+0
;aula001_helo_world.c,17 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;aula001_helo_world.c,18 :: 		RB0_bit = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;aula001_helo_world.c,19 :: 		RA0_bit = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;aula001_helo_world.c,20 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;aula001_helo_world.c,23 :: 		}
	GOTO       L_main0
;aula001_helo_world.c,26 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
