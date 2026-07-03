# This extends the existing hwdata in feeds/packages/hwdata
include $(TOPDIR)/rules.mk

PKG_NAME:=hwdata
PKG_VERSION:=0.406
PKG_RELEASE:=1

PKG_SOURCE:=hwdata-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/vcrhonek/hwdata/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=75b78266eb7f069372ab2c0832dff1da

PKG_MAINTAINER:=
PKG_LICENSE:=GPL-2.0-or-later XFree86-1.0
PKG_LICENSE_FILES:=LICENSE

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/hwdata-dev
  SECTION:=display
  CATEGORY:=Display
  TITLE:=hwdata
  URL:=https://github.com/vcrhonek/hwdata
endef

define Package/pnpids
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=PNP ID list
  URL:=https://github.com/vcrhonek/hwdata
endef

define Build/Configure
	( cd $(PKG_BUILD_DIR) && \
	  ./configure \
	    --prefix=/usr \
	    --datadir=/usr/share \
	)
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) hwdata.pc
endef


define Package/hwdata-dev/install
	$(INSTALL_DIR) $(1)/usr/share/hwdata
	# pci and usb are already done by feeds/packages/hwdata
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/oui.txt  $(1)/usr/share/hwdata/
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/iab.txt  $(1)/usr/share/hwdata/
endef

define Build/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR)/usr/share/pkgconfig
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/hwdata.pc \
	    $(STAGING_DIR)/usr/share/pkgconfig/

	$(INSTALL_DIR) $(STAGING_DIR)/usr/share/hwdata
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/pnp.ids  $(STAGING_DIR)/usr/share/hwdata/
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/pci.ids  $(STAGING_DIR)/usr/share/hwdata/
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/usb.ids  $(STAGING_DIR)/usr/share/hwdata/
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/oui.txt  $(STAGING_DIR)/usr/share/hwdata/
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/iab.txt  $(STAGING_DIR)/usr/share/hwdata/
endef

define Package/pnpids/install
	$(INSTALL_DIR) $(1)/usr/share/hwdata
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/pnp.ids $(1)/usr/share/hwdata/
endef

$(eval $(call BuildPackage,hwdata-dev))
$(eval $(call BuildPackage,pnpids))

