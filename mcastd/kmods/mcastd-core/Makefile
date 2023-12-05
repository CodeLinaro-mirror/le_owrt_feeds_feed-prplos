# Copyright (C) 2023 Soft At Home

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=mcastd-core
PKG_VERSION:=v0.1.0
PKG_RELEASE:=1
SHORT_DESCRIPTION:=mcastd core

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=v0.1.0
PKG_SOURCE_URL:=git@gitlab.com:soft.at.home/multicast/kmodules/mcastd-core.git
PKG_MIRROR_HASH:=skip
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=mcastd-core-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/kmodules/mcastd-core/-/archive/$(PKG_VERSION)
PKG_HASH:=482884e4f22be936d3a481602142f4da92c31ee9edf885d23901955f03b0689b
PKG_BUILD_DIR:=$(BUILD_DIR)/mcastd-core-$(PKG_VERSION)
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE


PKG_EXTMOD_SUBDIRS:=kernel

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=kmodules
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/kmodules/mcastd-core
  MENU:=1
  DEPENDS:=+kmod-mcastd-core +libxtables
endef

define Package/$(PKG_NAME)/config
  source "$(SOURCE)/Config.in"
endef

define KernelPackage/$(PKG_NAME)
  SECTION:=kernel
  CATEGORY:=Kernel modules
  SUBMENU:=Network Support
  TITLE:=mcastd core
  FILES:=$(PKG_BUILD_DIR)/kernel/mcastd_core.ko $(PKG_BUILD_DIR)/kernel/mcastd_pc.ko
  DEPENDS:=+iptables +tr181-mcastd
endef

EXTRA_CFLAGS :=

ifeq ($(CONFIG_MCASTD_DEBUG),y)
EXTRA_CFLAGS += -DMCASTD_DEBUG
endif

ifdef CONFIG_MCASTD_NICE
EXTRA_CFLAGS += -DMCASTD_NICE=$(CONFIG_MCASTD_NICE)
endif

ifeq ($(CONFIG_MCASTD_ACCESS_CONTROL),y)
EXTRA_CFLAGS += -DACCESS_CONTROL
endif

include $(INCLUDE_DIR)/kernel-defaults.mk

define Build/Compile
		$(KERNEL_MAKE) \
    	M="$(PKG_BUILD_DIR)/kernel" \
			KCFLAGS="$(EXTRA_CFLAGS)" \
			modules
		$(call Build/Compile/Default)
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/include/
	$(CP) $(PKG_BUILD_DIR)/include/mcastd $(1)/include/
endef

define Package/$(PKG_NAME)/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
	if [ -d ./files ]; then \
		$(CP) ./files/* $(1)/; \
	fi
	find $(1) -name *.a -exec rm {} +;
	find $(1) -name *.h -exec rm {} +;
	find $(1) -name *.pc -exec rm {} +;
endef

$(eval $(call BuildPackage,mcastd-core))
$(eval $(call KernelPackage,mcastd-core))
