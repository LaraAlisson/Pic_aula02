#line 1 "C:/Users/win10/Documents/Micro controlador Pic/Aula001/aula003_PIC12F675.c"
#line 4 "C:/Users/win10/Documents/Micro controlador Pic/Aula001/aula003_PIC12F675.c"
void main(){
 ANSEL = 0x00;
 CMCON = 7;
 TRISIO = 0b000010;
 GPIO = 0b000000;

 while(1)
 {
 if(GPIO.F1)
 {
 GPIO.F0 = 0;

 }
 else GPIO.F0 = 1;

 }

}
