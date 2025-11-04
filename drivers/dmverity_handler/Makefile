include $(TOPDIR)/rules.mk

PKG_NAME:=dmverity_handler
PKG_VERSION:=master
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/utilities/dmverity-handler.git
PKG_SOURCE_VERSION:=$(PKG_VERSION)
PKG_MIRROR_HASH:=skip
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>

include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/package.mk

define KernelPackage/$(PKG_NAME)
  SUBMENU:=Other modules
  TITLE:=dm-verity handler kernel module
  FILES:=$(PKG_BUILD_DIR)/kernel/(PKG_NAME).ko
  KCONFIG:=
  KERNEL_MAKE_FLAGS += EXTRA_CFLAGS="-I$(PKG_BUILD_DIR)/include"
endef

define Package/$(PKG_NAME)
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=dm-verity handler userspace tools
  DEPENDS:=+libubootenv
endef

define Package/$(PKG_NAME)/description
Userspace tools for dmverity_handler driver.
endef

define Build/Compile/User
	$(MAKE) -C $(PKG_BUILD_DIR)/user \
		CC="$(TARGET_CC)" \
		CFLAGS="$(TARGET_CFLAGS)" -I$(PKG_BUILD_DIR)/include \
		LDFLAGS="$(TARGET_LDFLAGS)"
endef

define Build/Compile
	$(call Build/Compile/User)
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/user/ubootenv-updater $(1)/usr/bin/
endef

$(eval $(call KernelPackage,$(PKG_NAME)))
$(eval $(call BuildPackage,$(PKG_NAME)))
