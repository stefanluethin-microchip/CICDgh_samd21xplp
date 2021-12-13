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

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    printf("START L1...");

    myCnt=0; //-SL    
    SYSTICK_TimerStart(); //-SL: start sysTmr

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        //SYS_Tasks ( );       //-SL: for csp-level app empty
        //-SL: polling sysTmr=expired flag        
        if(SYSTICK_TimerPeriodHasExpired())
        {
            LED_Toggle();
        
            myCnt++;
            if(cEchoCnt/2>=myCnt)
            {
                printf("g"); //-branch_1_cicd_testing 2.edit
            } else if ((cEchoCnt/2<myCnt) & (cEchoCnt>=myCnt))
            {
                printf("h"); //-branch_1_cicd_testing 2.edit
                if (cEchoCnt==myCnt)
                    myCnt=0;
            } else
                printf("ERROR1");
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

