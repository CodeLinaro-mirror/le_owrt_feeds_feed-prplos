# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=apparmor
PKG_VERSION:=3.0.3
PKG_RELEASE:=5

PKG_SOURCE:=$(PKG_NAME)-v$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://gitlab.com/apparmor/apparmor/-/archive/v$(PKG_VERSION)
PKG_HASH:=66db49cc578e6a85ba2fc350507ad1741d2534cdfc7ed71a81261f84d6e2262d
PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)-v$(PKG_VERSION)

PKG_LICENSE:=GPL-2.0-only
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Oskari Rauta <oskari.rauta@gmail.com>


include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk

define Package/apparmor/Default
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=AppArmor
  URL:=https://apparmor.net
endef

define Package/libapparmor
  TITLE:=AppArmor library
  SECTION:=libs
  CATEGORY:=Libraries
  URL:=https://apparmor.net
endef

define Package/apparmor-utils
  $(call Package/apparmor/Default)
  TITLE:=AppArmor utils
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=AppArmor
  DEPENDS:=$(INTL_DEPENDS) +libapparmor +ss +findutils-xargs
endef

define Package/apparmor-profiles
  $(call Package/apparmor/Default)
  TITLE:=AppArmor default profiles
endef

define Package/libapparmor/description
  Library to support AppArmor userspace utilities
endef

define Package/apparmor-utils/description
  AppArmor application security system init script and
  userspace utils to assist with AppArmor profile management
endef

define Package/apparmor-profiles/description
  A collection of profiles for the AppArmor application security system
endef

CONFIGURE_PATH=libraries/libapparmor

CONFIGURE_VARS += \
		SHELL=$(bash) \

CONFIGURE_ARGS += \
		--without-python \
		--without-perl \
		--without-ruby \
		--disable-man-pages

ifeq ($(CONFIG_BUILD_NLS),y)
	MAKE_VARS += WITH_LIBINTL=1
	MAKE_FLAGS += WITH_LIBINTL=1
endif

APPARMOR_CFLAGS = -I$(PKG_BUILD_DIR)/libraries/libapparmor/include
APPARMOR_LDFLAGS = -L$(PKG_BUILD_DIR)/libraries/libapparmor/src/.libs
DISTRO =

define Build/Configure
	$(MAKE) -C $(PKG_BUILD_DIR)/libraries/libapparmor configure
	$(RM) $(PKG_BUILD_DIR)/libraries/libapparmor/Makefile
	$(call Build/Configure/Default)
endef

define Build/Compile
	# Building libapparmor
	+$(MAKE_VARS) \
		CFLAGS="$(TARGET_CFLAGS)" CPPFLAGS="$(TARGET_CPPFLAGS)" LDFLAGS="$(TARGET_LDFLAGS)" $(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/libraries/libapparmor \
		$(MAKE_FLAGS)
	# Building parser
	+$(MAKE_VARS) \
		CFLAGS="$(TARGET_CFLAGS) $(APPARMOR_CFLAGS)" CPPFLAGS="$(TARGET_CPPFLAGS) $(APPARMOR_CFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS) $(APPARMOR_LDFLAGS) -lgcc_s" USE_SYSTEM=0 $(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/parser \
		$(MAKE_FLAGS) apparmor_parser
	# Building binutils
	+$(MAKE_VARS) \
		CFLAGS="$(TARGET_CFLAGS) $(APPARMOR_CFLAGS)" CPPFLAGS="$(TARGET_CPPFLAGS) $(APPARMOR_CFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS) $(APPARMOR_LDFLAGS)" USE_SYSTEM=0 $(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/binutils \
		$(MAKE_FLAGS)
	# Building utils
	+$(MAKE_VARS) \
		CFLAGS="$(TARGET_CFLAGS) $(APPARMOR_CFLAGS)" CPPFLAGS="$(TARGET_CPPFLAGS) $(APPARMOR_CFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS) $(APPARMOR_LDFLAGS)" USE_SYSTEM=0 $(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/utils \
		$(MAKE_FLAGS)
	# Building profiles
	+$(MAKE_VARS) \
		CFLAGS="$(TARGET_CFLAGS) $(APPARMOR_CFLAGS)" CPPFLAGS="$(TARGET_CPPFLAGS) $(APPARMOR_CFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS) $(APPARMOR_LDFLAGS)" USE_SYSTEM=0 $(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/profiles \
		$(MAKE_FLAGS)
endef

define Build/Install
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)-libapparmor $(PKG_INSTALL_DIR)-utils $(PKG_INSTALL_DIR)-profiles
	# Installing libapparmor
	+$(MAKE_VARS) \
		CFLAGS="$(TARGET_CFLAGS)" CPPFLAGS="$(TARGET_CPPFLAGS)" LDFLAGS="$(TARGET_LDFLAGS)" \
		$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/libraries/libapparmor \
		$(MAKE_FLAGS) DESTDIR="$(PKG_INSTALL_DIR)-libapparmor" install
	# Installing parser
	+$(MAKE_VARS) \
		CFLAGS="$(TARGET_CFLAGS)" LDFLAGS="$(TARGET_LDFLAGS)" USE_SYSTEM=1 $(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/parser \
		$(MAKE_FLAGS) DESTDIR="$(PKG_INSTALL_DIR)-utils" install
	# Installing binutils
	+$(MAKE_VARS) \
		CFLAGS="$(TARGET_CFLAGS)" LDFLAGS="$(TARGET_LDFLAGS)" USE_SYSTEM=1 $(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/binutils \
		$(MAKE_FLAGS) DESTDIR="$(PKG_INSTALL_DIR)-utils" install
	# Installing utils
	+$(MAKE_VARS) \
		CFLAGS="$(TARGET_CFLAGS)" LDFLAGS="$(TARGET_LDFLAGS)" USE_SYSTEM=1 $(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/utils \
		$(MAKE_FLAGS) DESTDIR="$(PKG_INSTALL_DIR)-utils" install
	# Installing profiles
	+$(MAKE_VARS) \
		CFLAGS="$(TARGET_CFLAGS)" LDFLAGS="$(TARGET_LDFLAGS)" USE_SYSTEM=1 $(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/profiles \
		$(MAKE_FLAGS) DESTDIR="$(PKG_INSTALL_DIR)-profiles" install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/sys/
	$(CP) $(PKG_INSTALL_DIR)-libapparmor/usr/include/sys/*.h $(1)/usr/include/sys/
	$(INSTALL_DIR) $(1)/usr/include/aalogparse/
	$(CP) $(PKG_INSTALL_DIR)-libapparmor/usr/include/aalogparse/*.h $(1)/usr/include/aalogparse/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)-libapparmor/usr/lib/libapparmor.{so*,a} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)-libapparmor/usr/lib/pkgconfig/libapparmor.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libapparmor/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)-libapparmor/usr/lib/libapparmor.so.1 $(1)/usr/lib/
	$(LN) libapparmor.so.1 $(1)/usr/lib/libapparmor.so
endef

define Package/apparmor-utils/install
	$(INSTALL_DIR) $(1)/etc/apparmor $(1)/usr/sbin $(1)/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)-utils/sbin/apparmor_parser $(1)/sbin/
	$(INSTALL_CONF) $(PKG_INSTALL_DIR)-utils/etc/apparmor/*.conf $(1)/etc/apparmor/
	$(INSTALL_CONF) $(PKG_BUILD_DIR)/parser/parser.conf $(1)/etc/apparmor/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)-utils/etc/apparmor/severity.db $(1)/etc/apparmor/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)-utils/sbin/apparmor_parser $(1)/sbin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)-utils/usr/bin/{aa-exec,aa-easyprof,aa-enabled,aa-features-abi} $(1)/usr/sbin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)-utils/usr/sbin/{aa-audit,aa-autodep,aa-cleanprof,aa-complain,aa-decode,aa-disable,aa-enforce,aa-genprof,aa-logprof,aa-mergeprof,aa-remove-unknown,aa-status,aa-unconfined} $(1)/usr/sbin/
	$(LN) aa-status $(1)/usr/sbin/apparmor_status
	$(INSTALL_DIR) $(1)/usr/share/apparmor/easyprof/templates $(1)/usr/share/apparmor/easyprof/policygroups
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)-utils/usr/share/apparmor/easyprof/templates/* $(1)/usr/share/apparmor/easyprof/templates/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)-utils/usr/share/apparmor/easyprof/policygroups/* $(1)/usr/share/apparmor/easyprof/policygroups/
	$(INSTALL_DIR) $(1)/etc/init.d $(1)/lib/functions
	$(INSTALL_BIN) ./files/apparmor.sh $(1)/lib/functions/
	$(INSTALL_BIN) ./files/apparmor.init $(1)/etc/init.d/apparmor
endef

define Package/apparmor-profiles/install
	$(INSTALL_DIR) $(1)/etc/apparmor.d $(1)/usr/share/apparmor/extra-profiles
	$(CP) -aR $(PKG_INSTALL_DIR)-profiles/etc/apparmor.d/** $(1)/etc/apparmor.d/
	$(INSTALL_CONF) $(PKG_INSTALL_DIR)-profiles/usr/share/apparmor/extra-profiles/** $(1)/usr/share/apparmor/extra-profiles/
endef

$(eval $(call BuildPackage,libapparmor))
$(eval $(call BuildPackage,apparmor-utils))
$(eval $(call BuildPackage,apparmor-profiles))
