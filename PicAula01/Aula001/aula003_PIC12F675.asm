
_main:

;aula003_PIC12F675.c,4 :: 		void main(){
;aula003_PIC12F675.c,5 :: 		ANSEL = 0x00; //desliga as funçoes AD das entradas.
	CLRF       ANSEL+0
;aula003_PIC12F675.c,6 :: 		CMCON = 7;    // desliga as funções Comparadores das entradas.
	MOVLW      7
	MOVWF      CMCON+0
;aula003_PIC12F675.c,7 :: 		TRISIO = 0b000010; // configura como saída.
	MOVLW      2
	MOVWF      TRISIO+0
;aula003_PIC12F675.c,8 :: 		GPIO = 0b000000; // configura em nivel baixo.
	CLRF       GPIO+0
;aula003_PIC12F675.c,10 :: 		while(1)
L_main0:
;aula003_PIC12F675.c,12 :: 		if(GPIO.F1)
	BTFSS      GPIO+0, 1
	GOTO       L_main2
;aula003_PIC12F675.c,14 :: 		GPIO.F0 = 0;
	BCF        GPIO+0, 0
;aula003_PIC12F675.c,16 :: 		}
	GOTO       L_main3
L_main2:
;aula003_PIC12F675.c,17 :: 		else GPIO.F0 = 1;
	BSF        GPIO+0, 0
L_main3:
;aula003_PIC12F675.c,19 :: 		}
	GOTO       L_main0
;aula003_PIC12F675.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
