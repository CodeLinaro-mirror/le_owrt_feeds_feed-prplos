include $(TOPDIR)/rules.mk

PKG_NAME:=softhsm2
PKG_SOURCE_VERSION:=913e7bfd463194fadcdd28f578087cc9c15643ee
PKG_RELEASE:=$(AUTORELEASE)

PKG_SOURCE_PROTO:=git
PKG_MIRROR_HASH:=skip
PKG_SOURCE_URL:=https://github.com/opendnssec/SoftHSMv2.git

PKG_LICENSE:=ISS
PKG_LICENSE_FILES:=LICENSE

PKG_INSTALL:=1

PKG_FIXUP:=autoreconf

PKG_CONFIG_DEPENDS:=CONFIG_PACKAGE_p11-kit

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/autotools.mk


define Package/$(PKG_NAME)
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=SoftHSMv2
  URL:=https://github.com/opendnssec/SoftHSMv2
  DEPENDS:=+libopenssl +libstdcpp +PACKAGE_p11-kit:p11-kit +libkcapi +libkeyutils
endef

define Package/$(PKG_NAME)/description
  SoftHSM is designed to meet the requirements of OpenDNSSEC, 
  but can also work together with other cryptographic products because of the PKCS#11 interface
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/lib/softhsm
	$(CP) $(PKG_INSTALL_DIR)/etc/softhsm2.conf $(1)/etc/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/softhsm/libsofthsm2.so $(1)/usr/lib/softhsm/
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/softhsm2-util $(1)/usr/bin
ifeq ($(CONFIG_PACKAGE_p11-kit),y)
	$(INSTALL_DIR) $(1)/usr/share/p11-kit/modules
	$(CP) $(PKG_INSTALL_DIR)/usr/share/p11-kit/modules/softhsm2.module $(1)/usr/share/p11-kit/modules
endif	
endef


$(eval $(call BuildPackage,$(PKG_NAME)))
