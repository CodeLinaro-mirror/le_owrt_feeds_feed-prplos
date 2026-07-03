include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=panel-mipi-dbi-backport
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

# Git repository details
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.consult.red/prpl/display/mod-panel-mipi-dbi.git
PKG_SOURCE_VERSION:=feat_FEAT-333
PKG_MIRROR_HASH:=skip

PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define KernelPackage/$(PKG_NAME)
  SECTION:=prpl Foundation
  SUBMENU:=Kernel Modules
  URL:=https://gitlab.consult.red/prpl/display/mod-panel-mipi-dbi.git
  DEPENDS:=+kmod-backlight +kmod-i2c-core +kmod-dma-buf
  TITLE:=MIPI DBI panels
  FILES:=$(PKG_BUILD_DIR)/src/panel-mipi-dbi.ko \
  $(LINUX_DIR)/drivers/gpu/drm/drm_kms_helper.ko \
  $(LINUX_DIR)/drivers/gpu/drm/drm_mipi_dbi.ko

  AUTOLOAD:=$(call AutoLoad,80,panel-mipi-dbi)
  KCONFIG:=	CONFIG_DRM=y \
	CONFIG_DRM_PANEL=y \
  CONFIG_DRM_KMS_HELPER=y \
  CONFIG_DRM_KMS_CMA_HELPER=y \
  CONFIG_DRM_MIPI_DBI=y \
  CONFIG_TINYDRM_ILI9225=m \
  CONFIG_DRM_PANEL_SIMPLE=m

# CONFIG_TINYDRM_ILI9225 & CONFIG_DRM_PANEL_SIMPLE is here to force MIPI_DBI and other dependencies is built, but the modules are not copied.
endef

define KernelPackage/$(PKG_NAME)/description
  DRM support for MIPI DBI compatible panels (backport for pre-5.18 kernels)
endef

define Build/Compile
        $(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/src \
                $(KERNEL_MAKE_FLAGS) \
                KSRC="$(LINUX_DIR)"
endef

$(eval $(call KernelPackage,$(PKG_NAME)))

# Firmware
define Package/firmware-nhd-240320AF
  SECTION:=firmware
  CATEGORY:=Firmware
  TITLE:=Firmware NHD 240320AF
  URL:=https://gitlab.consult.red/prpl/display/mod-panel-mipi-dbi.git
endef

define Package/firmware-nhd-240320AF/description
  Firmware files for NHD 240320AF display via SPI
endef

define Package/firmware-nhd-240320AF/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/firmware/nhd_240320AF.bin \
		$(1)/lib/firmware/nhd_240320AF.bin
endef

$(eval $(call BuildPackage,firmware-nhd-240320AF))
