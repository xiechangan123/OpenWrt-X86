#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2026 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/Openwrt-Passwall/openwrt-passwall' >>feeds.conf.default

# Use github mirrors 
sed -i 's|git.openwrt.org/feed|github.com/openwrt|g' feeds.conf.default
sed -i 's|git.openwrt.org/project|github.com/openwrt|g' feeds.conf.default

# Add packages
git clone https://github.com/xiechangan123/homeproxy package/homeproxy

# use singbox1.13.3
mkdir -p files/usr/bin
wget -qO- "https://github.com/SagerNet/sing-box/releases/download/v1.13.3/sing-box-1.13.3-linux-amd64-musl.tar.gz" | tar -xz -C files/usr/bin --strip-components=1 sing-box
chmod +x files/usr/bin/sing-box
