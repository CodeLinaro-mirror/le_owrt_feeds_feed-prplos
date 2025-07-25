include $(TOPDIR)/rules.mk

PKG_NAME:=swugenerator
PKG_VERSION:=0.6
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=0.6
PKG_MIRROR_HASH:=7d08a118023eaf7270b61b82f136930a85708c828ced4622b01daabe01c9a320,
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=GPL-3.0-only
PKG_LICENSE_FILES:=LICENSE
PKG_SOURCE_URL:=https://github.com/sbabic/swugenerator.git

PYTHON3_PKG_BUILD:=0
HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=requirements
HOST_BUILD_DEPENDS:=python3/host

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
			file://$(1) \
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
  TITLE:=SWUgenerator
  URL:=https://github.com/sbabic/swugenerator.git
endef

define Package/$(PKG_NAME)/description
	A host tool to generate SWU update package for SWUpdate
endef

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/$(PKG_NAME)-$(PKG_VERSION)

define Host/Compile
	echo "Do nothing"
endef

define Host/Install
	@echo "******* Installing swugenerator on the host *******"
	$(call HostPython3/PipInstall,$(HOST_BUILD_DIR))
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
$(eval $(call HostBuild))
