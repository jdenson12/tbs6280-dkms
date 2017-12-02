saa716x_core-objs	:= saa716x_pci.o	\
			   saa716x_i2c.o	\
			   saa716x_cgu.o	\
			   saa716x_msi.o	\
			   saa716x_dma.o	\
			   saa716x_vip.o	\
			   saa716x_aip.o	\
			   saa716x_phi.o	\
			   saa716x_boot.o	\
			   saa716x_fgpi.o	\
			   saa716x_adap.o	\
			   saa716x_gpio.o	\
			   saa716x_greg.o	\
			   saa716x_rom.o	\
			   saa716x_spi.o

# saa716x_ff-objs		:= saa716x_ff_main.o	\
#                            saa716x_ff_cmd.o	\
# 			   saa716x_ff_ir.o
obj-m += saa716x_core.o
obj-m += saa716x_budget.o
# obj-m += saa716x_hybrid.o
# obj-m += saa716x_ff.o

#obj-m += isl6421.o

# EXTRA_CFLAGS = -H

KVERSION := $(shell uname -r)

all:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) modules
# 	$(MAKE) -C /home/jemma/dev/src/linux-4.2 M=$(PWD) modules

clean:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
# 	$(MAKE) -C  /home/jemma/dev/src/linux-4.2 M=$(PWD) clean
