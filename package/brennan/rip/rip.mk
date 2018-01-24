################################################################################
#
# rip
#
################################################################################

RIP_VERSION = 1.0
RIP_SITE_METHOD = local
RIP_SITE = $(TOPDIR)/../source/rip
RIP_DEPENDENCIES = libcdio libcddb

define RIP_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) \
	$(MAKE) -C $(@D)
endef

define RIP_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/rip $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
