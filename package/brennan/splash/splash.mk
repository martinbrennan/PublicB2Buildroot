################################################################################
#
# splash
#
################################################################################

SPLASH_VERSION = 0.01
SPLASH_SITE_METHOD = local
SPLASH_SITE = $(TOPDIR)/../source/splash
SPLASH_DEPENDENCIES = freetype bcm2835

define SPLASH_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) \
	$(MAKE) -C $(@D)
endef

define SPLASH_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
