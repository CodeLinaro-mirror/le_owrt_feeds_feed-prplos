include $(TOPDIR)/rules.mk

PKG_NAME:=botan
PKG_VERSION:=2.19.4
PKG_RELEASE:=3
PKG_CPE_ID:=cpe:/a:botan_project:botan
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>

PKG_SOURCE:=Botan-$(PKG_VERSION).tar.xz
PKG_BUILD_DIR:=$(BUILD_DIR)/Botan-$(PKG_VERSION)
PKG_SOURCE_URL:=https://botan.randombit.net/releases/
PKG_HASH:=5a3a88ef6433e97bcab0efa1ed60c6197e4ada9d9d30bc1c47437bf89b97f276

PKG_USE_MIPS16:=0
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=license.txt
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/botan/Default
  SUBMENU:=SSL
  TITLE:=Crypto and TLS for C++11
  URL:=https://botan.randombit.net
endef

define Package/botan/Default/description
  Botan (Japanese for peony) is a cryptography library written in C++11 and
  released under the permissive Simplified BSD license.
endef

define Package/libbotan
  $(call Package/botan/Default)
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE+= (library)
  ABI_VERSION:=$(PKG_VERSION)-$(PKG_RELEASE)
  DEPENDS:=+libstdcpp +libpthread @!arc
endef

define Package/libbotan/description
  $(call Package/botan/Default/description)
  This package contains the botan library.
endef

CONFIGURE_CMD = ./configure.py

CONFIGURE_ARGS = \
	--cpu="$(ARCH)" \
	--cc-bin="$(TOOLCHAIN_DIR)/bin/$(TARGET_CXX)" \
	--cc="gcc" \
	--program-suffix="" \
	--prefix=$(CONFIGURE_PREFIX) \
	--exec-prefix=$(CONFIGURE_PREFIX) \
	--bindir=$(CONFIGURE_PREFIX)/bin \
	--sbindir=$(CONFIGURE_PREFIX)/sbin \
	--libexecdir=$(CONFIGURE_PREFIX)/lib \
	--sysconfdir=/etc \
	--datadir=$(CONFIGURE_PREFIX)/share \
	--localstatedir=/var \
	--mandir=$(CONFIGURE_PREFIX)/man \
	--infodir=$(CONFIGURE_PREFIX)/info \
	--optimize-for-size \
	$(DISABLE_IPV6)

ifeq ($(CONFIG_SOFT_FLOAT),y)
CONFIGURE_ARGS += --disable-neon
endif

TARGET_LDFLAGS += \
	-Wl,--gc-sections,--as-needed \
	-lpthread

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/botan* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib*.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib*.a $(1)/usr/lib/
endef

define Package/libbotan/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libbotan))
