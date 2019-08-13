#include <msp430.h> 

int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer

    P4DIR |= BIT7;
    P2DIR &= BIT1;
    P2REN |= BIT1;
    P2OUT |= BIT1;

    while(1){
        if((P2IN & BIT1)==0){
            P4OUT |= BIT7;
        }
        else{
            P4OUT &= ~BIT7;
        }
    }

    return 0;
}
