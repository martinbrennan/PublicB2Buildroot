################################################################################
#
# musicbrainz
#
################################################################################

MUSICBRAINZ_VERSION = 5.1.0
MUSICBRAINZ_SOURCE = libmusicbrainz-$(MUSICBRAINZ_VERSION).tar.gz
MUSICBRAINZ_SITE = https://github.com/metabrainz/libmusicbrainz/releases/download/release-5.1.0
MUSICBRAINZ_INSTALL_STAGING = YES
MUSICBRAINZ_CONF_OPTS = -DIMPORT_EXECUTABLES=$(BUILD_DIR)/host-musicbrainz-$(MUSICBRAINZ_VERSION)/ImportExecutables.cmake
MUSICBRAINZ_DEPENDENCIES = neon libxml2 host-musicbrainz
HOST_MUSICBRAINZ_DEPENDENCIES = host-neon host-libxml2 libxml2

$(eval $(cmake-package))
$(eval $(host-cmake-package))
