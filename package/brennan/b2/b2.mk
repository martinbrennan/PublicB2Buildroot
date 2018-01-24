################################################################################
#
# b2
#
################################################################################

B2_VERSION = 1.0
B2_SITE_METHOD = local
B2_SITE = $(TOPDIR)/../source/b2
B2_DEPENDENCIES = alsa-lib bcm2835 coverart dbus discid ffmpeg flac freetype \
                     libjpeg lame libcddb libcdio libcurl musicbrainz \
                     wireless_tools qrencode

define B2_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) \
	$(MAKE) -C $(@D)
endef

define B2_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/b2 $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
