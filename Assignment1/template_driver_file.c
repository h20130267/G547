#include <linux/init.h>
#include <linux/module.h>

int first_module_init(void){
 printk (KERN_ALERT "Inserting Driver into Kernal\n");
 return;
}
int first_module_exit(void){
 printk (KERN_ALERT "Exiting Driver from Kernal\n");
 return;
}

module_init(first_module_init);
module_init(first_module_exit);
