include $(TOPDIR)/rules.mk

PKG_NAME:=sysregister
PKG_VERSION:=v0.0.0
SHORT_DESCRIPTION:=Kernel module to expose IO registers to sysfs

PKG_SOURCE:=sysregister-v0.0.0.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/kmodules/sysregister/-/archive/v0.0.0
PKG_HASH:=264427a4289c7691366f9b09bc94abc0212742677fc559e9d96486b03c8e1a45
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
endef

define KernelPackage/$(PKG_NAME)/description
 This is a driver to expose IO registers to userspace.
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
