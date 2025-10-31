include $(TOPDIR)/rules.mk

PKG_NAME:=sysregister
PKG_VERSION:=dev_master_phen
SHORT_DESCRIPTION:=Kernel module to expose IO registers to sysfs

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=dev_master_phen
PKG_SOURCE_URL:=git@gitlab.com:prpl-foundation/components/utilities/sysregister.git
PKG_MIRROR_HASH:=skip
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=GPLv2
PKG_LICENSE_FILES:=LICENSE

PKG_RELEASE:=1

include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/package.mk

define KernelPackage/$(PKG_NAME)
  SUBMENU:=Other modules
  TITLE:=sysregister kernel module
  FILES:=$(PKG_BUILD_DIR)/$(PKG_NAME).ko
endef

define KernelPackage/$(PKG_NAME)/description
  This is a driver to expose IO registers to userspace.
endef

define Build/Compile
	$(MAKE) -C "$(LINUX_DIR)" \
		$(KERNEL_MAKE_FLAGS) \
		M="$(PKG_BUILD_DIR)" \
		EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
		modules
endef

$(eval $(call KernelPackage,$(PKG_NAME)))
