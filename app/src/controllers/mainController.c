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
#include "nrf_delay.h"
#include "nrf_gpio.h"

/*********************************************************************
 *
 *       main()
 *
 *  Function description
 *   Application entry point.
 */
int main(void)
{
  nrf_gpio_cfg_output(14);
  nrf_gpio_pin_write(14, 1);
  uint32_t ret = nrf_gpio_pin_read(14);
  /* Toggle LEDs. */
  while (true)
  {
    if (nrf_gpio_pin_read(14) == 1)
      nrf_gpio_pin_write(14, 0);
    else
      nrf_gpio_pin_write(14, 1);

    nrf_delay_ms(500);
  }
}

/*************************** End of file ****************************/
