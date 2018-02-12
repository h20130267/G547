#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/kdev_t.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include<linux/slab.h>                 //kmalloc()
#include<linux/uaccess.h>              //copy_to/from_user()
#include <linux/ioctl.h>
#include <linux/random.h>
#include <linux/types.h>
#include <linux/delay.h>
#include <asm/io.h>
 

#define WR_DELAY_VALUE _IOW('a','a',int *)
#define RD_CURCNT_VALUE _IOR('a','b',int *) 

#define CHANNEL0_data 0x40
#define CHANNEL1_data 0x41
#define CHANNEL2_data 0x42
#define COMMAND_REG 0x43
#define COUNT_ 2386 //1193*2
#define OUTPUT_RD 0x61

int delay_frm_user;
unsigned int cur_cnt_value;
unsigned int i = 0;
dev_t dev = 0;
static struct class *dev_class;
static struct cdev pit_cdev;

static int __init adc_driver_init(void);
static void __exit adc_driver_exit(void);
static int pit_open(struct inode *inode, struct file *file);
static int pit_release(struct inode *inode, struct file *file);
static ssize_t pit_read(struct file *filp, char __user *buf, size_t len,loff_t * off);
static ssize_t pit_write(struct file *filp, const char *buf, size_t len, loff_t * off);
static int delay(void);
static long pit_ioctl(struct file *file, unsigned int cmd, unsigned long arg);

 
static struct file_operations fops =
{
        .owner          = THIS_MODULE,
        .read           = pit_read,
        .write          = pit_write,
        .open           = pit_open,
        .unlocked_ioctl = pit_ioctl,
        .release        = pit_release,
};
 
static int pit_open(struct inode *inode, struct file *file)
{
        printk(KERN_INFO "Device File Opened...!!!\n");
        return 0;
}
 
static int pit_release(struct inode *inode, struct file *file)
{
        printk(KERN_INFO "Device File Closed...!!!\n");
        return 0;
}
 
static ssize_t pit_read(struct file *filp, char __user *buf, size_t len, loff_t *off)
{
        printk(KERN_INFO "Read Function\n");
        return 0;
}
static ssize_t pit_write(struct file *filp, const char __user *buf, size_t len, loff_t *off)
{
        printk(KERN_INFO "Write function\n");
        return 0;
}
static int delay(void){//Creates delay of 1ms using 8254 PIT
	int i=0;
	outb(0xB6,COMMAND_REG);
	outb((COUNT_ & 0xFF),CHANNEL2_data);
	outb((COUNT_ >>8),CHANNEL2_data);
	while((inb(0x61)&(0x20))!=0x00);
	return 0; 		
}
 
static long pit_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
         switch(cmd) {
                case WR_DELAY_VALUE:
			copy_from_user(&delay_frm_user ,(int *) arg, sizeof(delay_frm_user));
                        printk(KERN_INFO "Delay From User = %d\n", delay_frm_user);
			for (i=0;i<delay_frm_user;i++){ //sleep for user defined number of milliseconds
				delay();//1ms delay
			}			
                        break;
                case RD_CURCNT_VALUE:
			outb(0x80,COMMAND_REG);
			cur_cnt_value=inb(CHANNEL2_data);
			cur_cnt_value=cur_cnt_value | ((inb(CHANNEL2_data))<<8);
                        copy_to_user((unsigned int *) arg, &cur_cnt_value, sizeof(cur_cnt_value));
                        break;
        }
        return 0;
}
 
 
static int __init adc_driver_init(void)
{
        /*Allocating Major number*/
        if((alloc_chrdev_region(&dev, 0, 1, "timer0")) <0){
                printk(KERN_INFO "Cannot allocate major number\n");
                return -1;
        }
        printk(KERN_INFO "Major = %d Minor = %d \n",MAJOR(dev), MINOR(dev));
 
        /*Creating cdev structure*/
        cdev_init(&pit_cdev,&fops);
        pit_cdev.owner = THIS_MODULE;
        pit_cdev.ops = &fops;
 
        /*Adding character device to the system*/
        if((cdev_add(&pit_cdev,dev,1)) < 0){
            printk(KERN_INFO "Cannot add the device to the system\n");
            goto r_class;
        }
 
        /*Creating struct class*/
        if((dev_class = class_create(THIS_MODULE,"pit_class")) == NULL){
            printk(KERN_INFO "Cannot create the struct class\n");
            goto r_class;
        }
 
        /*Creating device*/
        if((device_create(dev_class,NULL,dev,NULL,"timer0")) == NULL){
            printk(KERN_INFO "Cannot create the Device 1\n");
            goto r_device;
        }
        printk(KERN_INFO "Device Driver Insert...Done!!!\n");
		
	outb(0xB6,COMMAND_REG);
	outb((COUNT_ & 0xFF),CHANNEL2_data);
	outb((COUNT_ >>8),CHANNEL2_data);

    return 0;
 
r_device:
        class_destroy(dev_class);
r_class:
        unregister_chrdev_region(dev,1);
        return -1;
}
 
void __exit adc_driver_exit(void)
{
        device_destroy(dev_class,dev);
        class_destroy(dev_class);
        cdev_del(&pit_cdev);
        unregister_chrdev_region(dev, 1);
    printk(KERN_INFO "Device Driver Remove...Done!!!\n");
}
 
module_init(adc_driver_init);
module_exit(adc_driver_exit);
 
MODULE_LICENSE("GPL");
MODULE_AUTHOR("Manoj Kumar Gunturi");
MODULE_DESCRIPTION("A simple device driver to control legacy 8254 Programmable Interval Timer");
MODULE_VERSION("1");





