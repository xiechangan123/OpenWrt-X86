#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2025 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/Openwrt-Passwall/openwrt-passwall' >>feeds.conf.default

# Use github mirror 
echo 'src-git packages https://github.com/openwrt/packages.git' >>feeds.conf.default
echo 'src-git luci https://github.com/openwrt/luci.git' >>feeds.conf.default
echo 'src-git routing https://github.com/openwrt-routing/packages.git' >>feeds.conf.default
echo 'src-git telephony https://github.com/openwrt/telephony.git' >>feeds.conf.default
echo 'src-git video https://github.com/openwrt/video.git' >>feeds.conf.default

# Add packages
git clone https://github.com/xiechangan123/homeproxy package/homeproxy
