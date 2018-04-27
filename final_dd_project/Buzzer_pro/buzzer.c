#include <linux/input.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/input-polldev.h>
#include <linux/usb.h>
#include <linux/spinlock.h>


struct input_polled_dev *usbkeypolldev;
struct usb_device *usbkeydev;


u8 data_receive;
spinlock_t lock;


void keypress_pollfn(struct input_polled_dev *usbkeypolldev)
{
struct input_dev *myinputdev = usbkeypolldev->input;
spin_lock(&lock);
	
usb_control_msg(usbkeydev,usb_rcvctrlpipe(usbkeydev,0),0,USB_TYPE_VENDOR|USB_DIR_IN,0,0,&data_receive,1,0);



input_report_key(myinputdev, KEY_S, data_receive);
input_sync(myinputdev);

spin_unlock(&lock);

}

static int keypress_probe(struct usb_interface *interface,const struct usb_device_id *id)
{	
	struct input_dev *myinputdev;
	usbkeydev = interface_to_usbdev(interface);
	
	/*Memory Allocation for polled Dev*/
	usbkeypolldev = input_allocate_polled_device();
	if(!usbkeypolldev){
		printk("Unable to allocate memory for Device\n");
		return -ENOMEM;
	}
	usbkeypolldev->poll = keypress_pollfn;
	usbkeypolldev->poll_interval = 300;  
	
	
	myinputdev = usbkeypolldev->input;
	/* set up descriptive labels */	
	myinputdev->name = "Keypress Device";
	/* this device has one key S*/
	set_bit(EV_KEY, myinputdev->evbit);
	set_bit(KEY_S, myinputdev->keybit);
	
	printk(KERN_INFO "USB KEYPRESS DEVICE (%04X:%04X) PLUGGEDIN\n",id->idVendor,id->idProduct);
	
	/*finally register with the input core */
	input_register_polled_device(usbkeypolldev);
	
	return 0;
}
	
static void keypress_closefn(struct usb_interface *interface)
{
	input_unregister_polled_device(usbkeypolldev);
	input_free_polled_device(usbkeypolldev);
	printk(KERN_ALERT "KeyPress USB Hardware Disconnected");
}

static struct usb_device_id keypress_table[] = 
{
	{ USB_DEVICE(0x16c0,0x05dc) },
	{}
};


MODULE_DEVICE_TABLE (usb,keypress_table);

static struct usb_driver keypress_usb =
{
	.name = "keypress_usb",
	.id_table = keypress_table,
	.probe = keypress_probe,
	.disconnect = keypress_closefn,
	
};
	
static int __init keypress_init(void)
{
 return usb_register(&keypress_usb);
}



static void __exit keypress_exit(void)
{
 
 usb_deregister(&keypress_usb);
}

module_init(keypress_init);
module_exit(keypress_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("MANOJ KUMAR GUNTURI");
MODULE_DESCRIPTION("USB KEYPRESS DEVICE");	
