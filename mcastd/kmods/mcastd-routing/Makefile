include $(TOPDIR)/rules.mk

PKG_NAME:=mcastd-routing
PKG_VERSION:=sah-next_v0.1.6
SHORT_DESCRIPTION:=Kernel module to manage linux's multicast forwading cache entries

PKG_SOURCE:=mcastd-routing-sah-next_v0.1.6.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/kmodules/mcastd-routing/-/archive/sah-next_v0.1.6
PKG_HASH:=0b5d27ff483b9213bd87d89a0fc1650f49f5239d113b489a55210efe6895b7fa
PKG_BUILD_DIR:=$(BUILD_DIR)/mcastd-routing-sah-next_v0.1.6
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE


PKG_RELEASE:=1
PKG_BUILD_DEPENDS += kernel
PKG_EXTMOD_SUBDIRS+=src

include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/package.mk

define KernelPackage/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Kernel Modules
  TITLE:=$(SHORT_DESCRIPTION)
  FILES+=$(PKG_BUILD_DIR)/src/mcastd-routing.$(LINUX_KMOD_SUFFIX)
  URL:=https://gitlab.com/prpl-foundation/components/core/kmodules/mcastd-routing
  DEPENDS += +kmod-mcastd-core
  MENU:=1
endef

define KernelPackage/$(PKG_NAME)/description
	Kernel module to manage linux's multicast forwading cache entries
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) compile \
		COMPONENT=$(PKG_NAME) \
		COMPONENT_TOPDIR=$(PKG_BUILD_DIR) \
		STAGINGDIR=$(STAGING_DIR) \
		CONFIGDIR=$(STAGING_DIR) \
		LINUX_DIR=$(if $(wildcard $(TOPDIR)/kernel),$(TOPDIR)/kernel,$(LINUX_DIR)) \
		CONFIG_MCASTD_ROUTING_DEBUG=$(CONFIG_MCASTD_ROUTING_DEBUG) \
		PKG_BUILD_DIR=$(PKG_BUILD_DIR) \
		SAH_PRPL_BUILD=1 \
		$(if $(wildcard $(TOPDIR)/kernel),,$(MAKE_FLAGS) $(KERNEL_MAKE_FLAGS))
endef

define Build/Install
	$(MAKE) -C $(PKG_BUILD_DIR) install \
		COMPONENT=$(PKG_NAME) \
		COMPONENT_TOPDIR=$(PKG_BUILD_DIR) \
		STAGINGDIR=$(STAGING_DIR) \
		CONFIGDIR=$(STAGING_DIR) \
		KMOD_INSTALL_PATH_PREFIX=$(PKG_INSTALL_DIR) \
		HARDCO_KERNEL_DIR=$(LINUX_DIR) \
		CONFIG_MCASTD_ROUTING_DEBUG=$(CONFIG_MCASTD_ROUTING_DEBUG) \
		D=$(PKG_INSTALL_DIR) \
		DEST=$(PKG_INSTALL_DIR)
endef

define Build/InstallDev
	$(MAKE) -C $(PKG_BUILD_DIR) install \
		COMPONENT=$(PKG_NAME) \
		COMPONENT_TOPDIR=$(PKG_BUILD_DIR) \
		STAGINGDIR=$(STAGING_DIR) \
		CONFIGDIR=$(STAGING_DIR) \
		KMOD_INSTALL_PATH_PREFIX=$(STAGING_DIR) \
		HARDCO_KERNEL_DIR=$(LINUX_DIR) \
		CONFIG_MCASTD_ROUTING_DEBUG=$(CONFIG_MCASTD_ROUTING_DEBUG) \
		D=$(STAGING_DIR) \
		DEST=$(STAGING_DIR)
endef

define KernelPackage/$(PKG_NAME)/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
	if [ -d ./files ]; then \
		$(CP) ./files/* $(1)/; \
	fi
	find $(1) -name *.a -exec rm {} +;
	find $(1) -name *.h -exec rm {} +;
	find $(1) -name *.pc -exec rm {} +;
endef

define KernelPackage/$(PKG_NAME)/config
	source "$(SOURCE)/Config.in"
endef

$(eval $(call KernelPackage,$(PKG_NAME)))
