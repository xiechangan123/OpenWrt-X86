#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2026 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# Use sing-box-1.13.8
#echo "🔍 正在获取 sing-box 1.13.8 的正确 HASH..."
#wget -qO- https://codeload.github.com/SagerNet/sing-box/tar.gz/v1.13.8 | sha256sum | awk '{print $1}'
sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.13.8/g' feeds/packages/net/sing-box/Makefile
sed -i 's/PKG_HASH:=.*/PKG_HASH:=6c1baaa94de5e16e6baeefe975ef9d8da2d955e872ff9c746f50e78cf88127d3/g' feeds/packages/net/sing-box/Makefile
