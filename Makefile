# Copyright (C) 2021 Tano Systems (https://github.com/tano-systems/luci-app-tn-netports)
# Copyright (C) 2022 waynesg <https://github.com/waynesg>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-netports
LUCI_TITLE:=LuCI support for luci-app-tn-netports
LUCI_DEPENDS:=+luabitop
LUCI_PKGARCH:=all
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
