        /*Para usar os pinos como entradas foi necessari
        desativar o ANSEL e CMCON*/

void main(){
     ANSEL = 0x00; //desliga as fun�oes AD das entradas.
     CMCON = 7;    // desliga as fun��es Comparadores das entradas.
     TRISIO = 0b000010; // configura como sa�da.
       GPIO = 0b000000; // configura em nivel baixo.

   while(1)
   {
    if(GPIO.F1)
    {
     GPIO.F0 = 0;

    }
    else GPIO.F0 = 1;

  }

}