################################################################################
#
# rtl8812au
#
################################################################################

RTL8812AU_VERSION = efe68a9fc0283c2028398596aeefb98be5c70aa7
RTL8812AU_SITE = $(call github,fariouche,rtl8812AU,$(RTL8812AU_VERSION))
RTL8812AU_LICENSE = GPL-2.0+
RTL8812AU_LICENSE_FILES = COPYING
RTL8812AU_DEPENDENCIES = linux

define RTL8812AU_BUILD_CMDS
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(TARGET_CROSS) KSRC=$(LINUX_DIR) -C $(@D)
endef

define RTL8812AU_INSTALL_TARGET_CMDS
	$(INSTALL) -p -m 0644 $(@D)/8812au.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/kernel/drivers/net/wireless
	$(HOST_DIR)/sbin/depmod -b $(TARGET_DIR) $(LINUX_VERSION_PROBED)
endef

$(eval $(generic-package))
