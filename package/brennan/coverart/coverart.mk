################################################################################
#
# coverart
#
################################################################################

COVERART_VERSION = 1.0.0
COVERART_SOURCE = libcoverart-$(COVERART_VERSION).tar.gz
COVERART_SITE = https://github.com/metabrainz/libcoverart/releases/download/release-$(COVERART_VERSION)
COVERART_INSTALL_STAGING = YES
COVERART_CONF_OPTS = -DIMPORT_EXECUTABLES=$(BUILD_DIR)/host-coverart-$(COVERART_VERSION)/ImportExecutables.cmake
COVERART_DEPENDENCIES = neon jansson host-coverart
HOST_COVERART_DEPENDENCIES = host-neon host-jansson

$(eval $(cmake-package))
$(eval $(host-cmake-package))
