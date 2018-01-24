################################################################################
#
# qrencode
#
################################################################################

QRENCODE_VERSION = 3.4.4
QRENCODE_SOURCE = qrencode-$(QRENCODE_VERSION).tar.bz2
QRENCODE_SITE = http://fukuchi.org/works/qrencode
QRENCODE_INSTALL_STAGING = YES
#QRENCODE_DEPENDENCIES += libiconv
$(eval $(autotools-package))
