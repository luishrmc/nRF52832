/*********************************************************************
*                    SEGGER Microcontroller GmbH                     *
*                        The Embedded Experts                        *
**********************************************************************

-------------------------- END-OF-HEADER -----------------------------

File    : main.c
Purpose : Generic application start

*/

#include <stdio.h>
#include <stdlib.h>
#include "lib/NRF52832_XXAA/libraries/delay/nrf_delay.h"

/*********************************************************************
 *
 *       main()
 *
 *  Function description
 *   Application entry point.
 */
int main(void)
{
  /* Toggle LEDs. */
  while (true)
  {
    for (int i = 0; i < 10; i++)
    {
      nrf_delay_ms(500);
    }
  }
}

/*************************** End of file ****************************/
