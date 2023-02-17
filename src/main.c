#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <io.h>

#include <animate.h>

int main(int argc, char *argv[]) {
   
    /* must have exactly 1 argument */
    if (argc!=2) {
        printf("Invalid command line arguments.\n");
        printf("Usage: animate <path>\n");
        return 1;
    }

    /* load the file */
    unsigned int flen=0;
    uint8_t *ani=fload(argv[1],NULL,0,&flen);
    if (ani==NULL) {
        printf("File %s could not be read.\n",argv[1]);
        return 2;
    }

    /* recognize file format */
    if (ani[0]!='A'||ani[1]!='N') {
        printf("File %s does not look like an animation file.\n",argv[1]);
        return 3;
    }

    /* and, finally, animate... */
    animate(ani);

    /* release the file */
    free(ani);
    return 0;
}