################################################################################
#
# bcm2835
#
################################################################################

BCM2835_VERSION = 1.38
BCM2835_SOURCE = bcm2835-$(BCM2835_VERSION).tar.gz
BCM2835_SITE = http://www.airspayce.com/mikem/bcm2835
BCM2835_INSTALL_STAGING = YES
$(eval $(autotools-package))
