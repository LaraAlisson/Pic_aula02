#line 1 "C:/Users/win10/Documents/Micro controlador Pic/Aula001/aula001_helo_world.c"


void main() {

 TRISB = 0b00000000;
 PORTB = 0b00000000;
 TRISA = 0b00000000;
 PORTA = 0b00000000;
 TRISD = 0b00000000;
 PORTD = 0b00000000;

 while(1)
 {
 RB0_bit = 1;
 RA0_bit = 0;
 PORTD++;
 delay_ms(100);
 RB0_bit = 0;
 RA0_bit = 1;
 delay_ms(100);


 }


}
