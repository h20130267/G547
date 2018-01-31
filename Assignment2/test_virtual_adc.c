#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include<sys/ioctl.h>
 
#define ADC_0 _IOR('a','a',int32_t*)
#define ADC_1 _IOR('a','b',int32_t*)
#define ADC_2 _IOR('a','c',int32_t*)
#define ADC_3 _IOR('a','d',int32_t*)
#define ADC_4 _IOR('a','e',int32_t*)
#define ADC_5 _IOR('a','f',int32_t*)
#define ADC_6 _IOR('a','g',int32_t*)
#define ADC_7 _IOR('a','h',int32_t*)

 
int main()
{
        int fd;
        int adc_channel;
	int32_t digital_read[8];
	printf("Opening Device file!!!\n");
        fd = open("/dev/adc_device", O_RDWR);
        if(fd < 0) {
                printf("Cannot open device file...\n");
                return 0;
        }
 	printf("Successfully opened Device file!!!\n\n");
	while(1) {
                printf("Please enter the adc_channel number(0~7) or to exit enter 8: ");
                scanf(" %d", &adc_channel);
                printf("%d\n", adc_channel);
                
                switch(adc_channel) {
                        case 0:
                                ioctl(fd, ADC_0, (int32_t*) &digital_read[adc_channel]);
                                printf("Digital value read from adc channel 0 is: %d\n",digital_read[adc_channel]);
                                break;
                        case 1:
                                ioctl(fd, ADC_1, (int32_t*) &digital_read[adc_channel]);
                                printf("Digital value read from adc channel 1 is: %d\n",digital_read[adc_channel]);
                                break;
                        case 2:
                                ioctl(fd, ADC_2, (int32_t*) &digital_read[adc_channel]);
                                printf("Digital value read from adc channel 2 is: %d\n",digital_read[adc_channel]);
                                break;
                        case 3:
                                ioctl(fd, ADC_3, (int32_t*) &digital_read[adc_channel]);
                                printf("Digital value read from adc channel 3 is: %d\n",digital_read[adc_channel]);
                                break;
                        case 4:
                                ioctl(fd, ADC_4, (int32_t*) &digital_read[adc_channel]);
                                printf("Digital value read from adc channel 4 is: %d\n",digital_read[adc_channel]);
                                break;
                        case 5:
                                ioctl(fd, ADC_5, (int32_t*) &digital_read[adc_channel]);
                                printf("Digital value read from adc channel 5 is: %d\n",digital_read[adc_channel]);
                                break;
                        case 6:
                                ioctl(fd, ADC_6, (int32_t*) &digital_read[adc_channel]);
                                printf("Digital value read from adc channel 6 is: %d\n",digital_read[adc_channel]);
                                break;
                        case 7:
                                ioctl(fd, ADC_7, (int32_t*) &digital_read[adc_channel]);
                                printf("Digital value read from adc channel 7 is: %d\n",digital_read[adc_channel]);
                                break;
			case 8:
                                close(fd);
				printf("Successfully closed Device file!!!\n\n");
                                exit(1);
                                break;
                        
                        default:
                                printf("Please choose valid adc channel number ...\n");
				printf("i.e., Enter a value between 0 to 7...\n");
				printf("or to exit enter 8\n");
                                break;
                }
        }
        
}
