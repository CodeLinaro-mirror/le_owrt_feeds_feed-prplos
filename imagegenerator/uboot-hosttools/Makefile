include $(TOPDIR)/rules.mk

PKG_NAME:=uboot-hosttools
PKG_VERSION:=v2025.04
SHORT_DESCRIPTION:=U-Boot upstream bootloader for host tools

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=v2025.04
PKG_SOURCE_URL:=https://github.com/u-boot/u-boot
PKG_MIRROR_HASH:=979c88d50c323877a270fcac46e4fa615bb7887798a4dd0af883420df9533428
PKG_BUILD_DEPENDS:=libopenssl
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_RELEASE:=1
PYTHON3_PKG_BUILD:=0
HOST_BUILD_DEPENDS:=python3/host

LIBRARIES:= openssl

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host.mk

# Same as HostPython3/PipInstall() from python3-host.mk but with no check on hashes
define HostPython3/PipInstall
	$(call locked, \
		$(HOST_PYTHON3_VARS) \
		$(HOST_PYTHON3_PIP_VARS) \
		$(HOST_PYTHON3_PIP) \
			install \
			--no-binary :all: \
			--progress-bar off \
			$(1) \
		$(if $(CONFIG_PYTHON3_HOST_PIP_CACHE_WORLD_READABLE), \
			&& $(FIND) $(HOST_PYTHON3_PIP_CACHE_DIR) -not -type d -exec chmod go+r  '{}' \; \
			&& $(FIND) $(HOST_PYTHON3_PIP_CACHE_DIR)      -type d -exec chmod go+rx '{}' \; \
		), \
		pip \
	)
endef

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Image Generation
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://source.denx.de/u-boot/u-boot.git
endef

define Package/$(PKG_NAME)/description
	U-Boot host tools
endef

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/$(PKG_NAME)-$(PKG_VERSION)

define Host/Compile
	$(MAKE) STAGINGDIR=$(STAGING_DIR_HOST) \
	-C $(HOST_BUILD_DIR) \
	tools-only_defconfig \
	scripts_dtc tools-only
endef

define Host/Install
	@echo "******* Installing pylib on the host *******"
	$(call HostPython3/PipInstall,file://$(HOST_BUILD_DIR)/tools/u_boot_pylib)
	@echo "******* Installing dtoc on the host *******"
	$(call HostPython3/PipInstall,file://$(HOST_BUILD_DIR)/tools/dtoc)
	@echo "******* Installing binman on the host *******"
	$(call HostPython3/PipInstall,file://$(HOST_BUILD_DIR)/tools/binman)
	@echo "******* Installing cryptodome on the host *******"
	$(call HostPython3/PipInstall, pycryptodomex==3.19.1)
	@echo "******* Installing mkimage on host *******"
	$(INSTALL_DIR) $(STAGING_DIR_HOST)/bin
	$(CP) $(HOST_BUILD_DIR)/tools/mkimage $(STAGING_DIR_HOST)/bin
	$(CP) $(HOST_BUILD_DIR)/scripts/dtc/dtc $(STAGING_DIR_HOST)/bin
	# Other tools can be installed if required
endef

define Host/Clean
	rm -f $(STAGING_DIR_HOST)/bin/mkimage
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
$(eval $(call HostBuild))
