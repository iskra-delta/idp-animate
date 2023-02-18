#ifndef __ANIMATE_H__
#define __ANIMATE_H__

#include <stdint.h>

#define SCREEN_WIDTH 1024
#define SCREEN_HEIGHT 256

typedef struct animation_s {
    uint16_t magic;
    uint8_t format;
    uint16_t width;
    uint16_t height;
    uint8_t frames;
    uint16_t offsets[];
} animation_t;

extern void animate(animation_t *ani); 

#endif /* __ANIMATE_H__ */