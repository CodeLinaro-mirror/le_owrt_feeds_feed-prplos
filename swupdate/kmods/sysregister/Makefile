include $(TOPDIR)/rules.mk

PKG_NAME:=sysregister
PKG_VERSION:=dev_FEAT-29
SHORT_DESCRIPTION:=Kernel module to expose IO registers to sysfs

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=dev_FEAT-29
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/kmodules/sysregister.git
PKG_MIRROR_HASH:=1894d24a42f55e710417427b8fae92b5f1457e105e9697787f548bf5b2712ba6
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_RELEASE:=1

include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/package.mk

define KernelPackage/$(PKG_NAME)
  SUBMENU:=Other modules
  TITLE:=sysregister kernel module
  FILES:=$(PKG_BUILD_DIR)/$(PKG_NAME).ko
  KCONFIG:=
  AUTOLOAD:=$(call AutoLoad,99,sysregister)
endef

define KernelPackage/$(PKG_NAME)/description
 This is a driver to expose IO registers to userspace.
endef

define KernelPackage/$(PKG_NAME)/install
	$(if $(CONFIG_SYSREGISTER_RESET_BOOTCOUNT), \
		$(INSTALL_DIR) $(1)/etc/init.d; \
		$(INSTALL_BIN) ./files/zzz_bootconfirm.init $(1)/etc/init.d/zzz_bootconfirm; \
	)
endef

define KernelPackage/$(PKG_NAME)/config
	source "$(SOURCE)/Config.in"
endef

define Build/Compile
	$(MAKE) -C $(LINUX_DIR) \
		COMPONENT=$(PKG_NAME) \
		COMPONENT_TOPDIR=$(PKG_BUILD_DIR) \
		M=$(PKG_BUILD_DIR) \
		$(KERNEL_MAKE_FLAGS) \
		modules
endef

$(eval $(call KernelPackage,$(PKG_NAME)))
