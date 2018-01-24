################################################################################
#
# discid
#
################################################################################

DISCID_VERSION = 0.6.1
DISCID_SOURCE = libdiscid-$(DISCID_VERSION).tar.gz
DISCID_SITE = http://ftp.musicbrainz.org/pub/musicbrainz/libdiscid 
DISCID_INSTALL_STAGING = YES
$(eval $(autotools-package))
