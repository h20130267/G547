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
 

#define ADC_0 _IOR('a','a',int32_t*)
#define ADC_1 _IOR('a','b',int32_t*)
#define ADC_2 _IOR('a','c',int32_t*)
#define ADC_3 _IOR('a','d',int32_t*)
#define ADC_4 _IOR('a','e',int32_t*)
#define ADC_5 _IOR('a','f',int32_t*)
#define ADC_6 _IOR('a','g',int32_t*)
#define ADC_7 _IOR('a','h',int32_t*)

 

int32_t adc_data[8];
dev_t dev = 0;
static struct class *dev_class;
static struct cdev adc_cdev;
uint32_t i;

static int __init adc_driver_init(void);
static void __exit adc_driver_exit(void);
static int adc_open(struct inode *inode, struct file *file);
static int adc_release(struct inode *inode, struct file *file);
static ssize_t adc_read(struct file *filp, char __user *buf, size_t len,loff_t * off);
static ssize_t adc_write(struct file *filp, const char *buf, size_t len, loff_t * off);
static long adc_ioctl(struct file *file, unsigned int cmd, unsigned long arg);
 
static struct file_operations fops =
{
        .owner          = THIS_MODULE,
        .read           = adc_read,
        .write          = adc_write,
        .open           = adc_open,
        .unlocked_ioctl = adc_ioctl,
        .release        = adc_release,
};
 
static int adc_open(struct inode *inode, struct file *file)
{
        printk(KERN_INFO "Device File Opened...!!!\n");
        return 0;
}
 
static int adc_release(struct inode *inode, struct file *file)
{
        printk(KERN_INFO "Device File Closed...!!!\n");
        return 0;
}
 
static ssize_t adc_read(struct file *filp, char __user *buf, size_t len, loff_t *off)
{
        printk(KERN_INFO "Read Function\n");
        return 0;
}
static ssize_t adc_write(struct file *filp, const char __user *buf, size_t len, loff_t *off)
{
        printk(KERN_INFO "Write function\n");
        return 0;
}
 
static long adc_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
         switch(cmd) {
                case ADC_0:
			get_random_bytes(&i,sizeof(int));
			adc_data[0]=i%1024;
                        copy_to_user((int32_t*) arg, &adc_data[0], sizeof(adc_data[0]));
                        break;
                case ADC_1:
			get_random_bytes(&i,sizeof(int));
			adc_data[1]=i%1024;
                        copy_to_user((int32_t*) arg, &adc_data[1], sizeof(adc_data[1]));
                        break;
                case ADC_2:
			get_random_bytes(&i,sizeof(int));
			adc_data[2]=i%1024;
                        copy_to_user((int32_t*) arg, &adc_data[2], sizeof(adc_data[2]));
                        break;
                case ADC_3:
			get_random_bytes(&i,sizeof(int));
			adc_data[3]=i%1024;
                        copy_to_user((int32_t*) arg, &adc_data[3], sizeof(adc_data[3]));
                        break;
                case ADC_4:
			get_random_bytes(&i,sizeof(int));
			adc_data[4]=i%1024;
                        copy_to_user((int32_t*) arg, &adc_data[4], sizeof(adc_data[4]));
                        break;
                case ADC_5:
			get_random_bytes(&i,sizeof(int));
			adc_data[5]=i%1024;
                        copy_to_user((int32_t*) arg, &adc_data[5], sizeof(adc_data[5]));
                        break;
                case ADC_6:
			get_random_bytes(&i,sizeof(int));
			adc_data[6]=i%1024;
                        copy_to_user((int32_t*) arg, &adc_data[6], sizeof(adc_data[6]));
                        break;
                case ADC_7:
			get_random_bytes(&i,sizeof(int));
			adc_data[7]=i%1024;
                        copy_to_user((int32_t*) arg, &adc_data[7], sizeof(adc_data[7]));
                        break;
        }
        return 0;
}
 
 
static int __init adc_driver_init(void)
{
        /*Allocating Major number*/
        if((alloc_chrdev_region(&dev, 0, 1, "adc_device")) <0){
                printk(KERN_INFO "Cannot allocate major number\n");
                return -1;
        }
        printk(KERN_INFO "Major = %d Minor = %d \n",MAJOR(dev), MINOR(dev));
 
        /*Creating cdev structure*/
        cdev_init(&adc_cdev,&fops);
        adc_cdev.owner = THIS_MODULE;
        adc_cdev.ops = &fops;
 
        /*Adding character device to the system*/
        if((cdev_add(&adc_cdev,dev,1)) < 0){
            printk(KERN_INFO "Cannot add the device to the system\n");
            goto r_class;
        }
 
        /*Creating struct class*/
        if((dev_class = class_create(THIS_MODULE,"adc_class")) == NULL){
            printk(KERN_INFO "Cannot create the struct class\n");
            goto r_class;
        }
 
        /*Creating device*/
        if((device_create(dev_class,NULL,dev,NULL,"adc_device")) == NULL){
            printk(KERN_INFO "Cannot create the Device 1\n");
            goto r_device;
        }
        printk(KERN_INFO "Device Driver Insert...Done!!!\n");
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
        cdev_del(&adc_cdev);
        unregister_chrdev_region(dev, 1);
    printk(KERN_INFO "Device Driver Remove...Done!!!\n");
}
 
module_init(adc_driver_init);
module_exit(adc_driver_exit);
 
MODULE_LICENSE("GPL");
MODULE_AUTHOR("Manoj Kumar Gunturi");
MODULE_DESCRIPTION("A simple device driver for virtual adc with 8 channels");
MODULE_VERSION("1");
