/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
//-SL:
volatile uint32_t myCnt;
#define cEchoCnt 10

volatile uint32_t u32CntLEDBlink;
volatile uint32_t u32CntUARTtxCh1, u32CntUARTtxCh2;


int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    printf("START L1...");

    myCnt=0; //-SL
    u32CntLEDBlink=0;
    u32CntUARTtxCh1=0; u32CntUARTtxCh2=0;
    SYSTICK_TimerStart(); //-SL: start sysTmr

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        //SYS_Tasks ( );       //-SL: for csp-level app empty
        //-SL: polling sysTmr=expired flag        
        if(SYSTICK_TimerPeriodHasExpired())
        {
            LED_Toggle();
            u32CntLEDBlink++;
        
            myCnt++;
            if(cEchoCnt/2>=myCnt)
            {
                printf("a");
                u32CntUARTtxCh1++;
            } else if ((cEchoCnt/2<myCnt) & (cEchoCnt>=myCnt))
            {
                printf("b");
                u32CntUARTtxCh2++;
                if (cEchoCnt==myCnt)
                    myCnt=0;
            } else
                printf("ERROR1");
        }
        //-add code to check SW1=pressed to jump to endOfTest()
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}
