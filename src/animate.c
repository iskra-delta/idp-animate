#include <stdint.h>
#include <stdio.h>
#include <ugpx.h>

static uint8_t gnextpage[] = { 1, 0 };

static void gclsex(uint8_t endpage) {
    gsetpage(PG_DISPLAY,gnextpage[endpage]);
    gcls();
    gsetpage(PG_DISPLAY,endpage);
    gcls();
}

void animate(uint8_t *ani) {

    /* initialize graphics. */
    ginit(RES_1024x256);

    /* clear screen and switch to page 1 */
    gclsex(1);

    /* and loop */
    while (!kbhit()) {};

    /* clear screen and switch to page 0 */
    gclsex(0);

    /* exit graphics. */
    gexit();
}