################################################################################
#
# libcddb
#
################################################################################

LIBCDDB_VERSION = 1.3.2
LIBCDDB_SOURCE = libcddb-$(LIBCDDB_VERSION).tar.bz2
LIBCDDB_SITE = http://prdownloads.sourceforge.net/libcddb 
LIBCDDB_INSTALL_STAGING = YES
LIBCDDB_DEPENDENCIES += libiconv
$(eval $(autotools-package))
