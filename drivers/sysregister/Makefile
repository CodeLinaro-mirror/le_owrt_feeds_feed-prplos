include $(TOPDIR)/rules.mk

PKG_NAME:=sysregister
PKG_VERSION:=master_v1.0.0
SHORT_DESCRIPTION:=Kernel module to expose IO registers to sysfs

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=master_v1.0.0
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/kmodules/sysregister.git
PKG_MIRROR_HASH:=skip
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
		$(INSTALL_BIN) ./files/bootconfirm.init $(1)/etc/init.d/bootconfirm; \
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
