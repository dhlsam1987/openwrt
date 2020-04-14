#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

git clone https://github.com/rufengsuixing/luci-app-adguardhome package/adguardhome
git https://github.com/Lienol/openwrt-package/tree/master/lienol/luci-app-passwall package/passwall
./scripts/feeds update -a
./scripts/feeds install -a

# Modify default IP
sed -i 's/192.168.1.1/10.10.10.11/g' package/base-files/files/bin/config_generate
