#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include<sys/ioctl.h>

#define WR_DELAY_VALUE _IOW('a','a',int *)
#define RD_CURCNT_VALUE _IOR('a','b',unsigned int *)


int delay;//variable to get delay value from user to pass it to sleep function in kernel space
unsigned int current_counter_value;//variable to read value of current counter value from kernel space

 
int main()
{
        int fd;
        int option;

	printf("Opening Device file!!!\n");
        fd = open("/dev/timer0", O_RDWR);
        if(fd < 0) {
                printf("Cannot open device file...\n");
                return 0;
        }
 	printf("Successfully opened Device file!!!\n\n");

	while(1) {
                printf("Choose one from the following options: \n");
		printf("1. To generate delay(in ms)\n");
		printf("2. To Read the current value of counter\n");
		printf("3. Exit\n");
		scanf("%d",&option);
		printf("Option Chosen is: %d\n",option);
                
                
                switch(option) {
                       
                        case 1: printf("Enter the delay in ms: ");
				scanf("%d",&delay);
				printf("Generating Delay...\n");
                                ioctl(fd, WR_DELAY_VALUE, (int *) &delay); 
				printf("Delay of %d ms has been generated\n\n\n",delay);                       
                                break;
                        case 2: printf("Reading the current value of counter...\n");
                                ioctl(fd, RD_CURCNT_VALUE, (unsigned int *) &current_counter_value);
                                printf("The current value of pit counter is: %d \n\n\n",current_counter_value);
                                break;
                       
			case 3:
                                close(fd);
				printf("Successfully closed Device file!!!\n\n");
                                exit(1);
                                break;
                        
                        default:
                                printf("Please choose valid option ...\n");
                                break;
                }
        }
        
}
