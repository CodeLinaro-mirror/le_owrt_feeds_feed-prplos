include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-usb
SHORT_DESCRIPTION:=TR-181 USB manager

PKG_SOURCE_PROTO:=git
PKG_SOURCE_DATE:=2025-04-23
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-usb
PKG_SOURCE_VERSION:=553ce86c064e608bab9c2abe4b0e44de4117d265
PKG_MIRROR_HASH:=8fd8a2d3bc8a0d599c2106e3393f3d5be14390bbeb8f845e4355f8eaabfcea92

PKG_MAINTAINER:=Sagemcom <support.opensource@sagemcom.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr181-usb

PKG_RELEASE:=1

define SAHInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S$(CONFIG_AMX_TR181_USB_ORDER)$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K$(CONFIG_AMX_TR181_USB_ORDER)$(COMPONENT)
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-usb
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxo
  DEPENDS += +amxrt
  DEPENDS += +libsahtrace
  DEPENDS += +libamxm
  DEPENDS += +libsysfs
  DEPENDS += +libbsd
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Implementation of TR181 USB datamodel
endef

ifdef CONFIG_AMX_TR181_USB_BUSYBOX_MDEV_OPTIONS
CONFIGURE_OPTS += CONFIG_AMX_TR181_USB_BUSYBOX_MDEV_OPTIONS=$(CONFIG_AMX_TR181_USB_BUSYBOX_MDEV_OPTIONS)
endif

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_AMX_TR181_USB_ORDER=$(CONFIG_AMX_TR181_USB_ORDER) $(CONFIGURE_OPTS))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_AMX_TR181_USB_ORDER=$(CONFIG_AMX_TR181_USB_ORDER) $(CONFIGURE_OPTS))

	$(call SAHInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_AMX_TR181_USB_ORDER=$(CONFIG_AMX_TR181_USB_ORDER) $(CONFIGURE_OPTS))
endef

define Package/$(PKG_NAME)/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
ifdef CONFIG_AMX_TR181_USB_BUSYBOX_MDEV_OPTIONS
	if [ -d ./files/mdev ]; then \
		$(CP) ./files/mdev/* $(1)/; \
	fi
else
	if [ -d ./files/hotplug ]; then \
		$(CP) ./files/hotplug/* $(1)/; \
	fi
endif
	find $(1) -name *.a -exec rm {} +;
	find $(1) -name *.h -exec rm {} +;
	find $(1) -name *.pc -exec rm {} +;
endef

define Package/$(PKG_NAME)/config
        source "$(SOURCE)/Config.in"
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
