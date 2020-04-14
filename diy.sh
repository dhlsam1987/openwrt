#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

#添加adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
#添加lienol包
git clone https://github.com/Lienol/openwrt-package package/lienol/
git clone https://github.com/pymumu/smartdns package/smartdns

./scripts/feeds update -a
./scripts/feeds install -a

# Modify default IP
sed -i 's/192.168.1.1/10.10.10.11/g' package/base-files/files/bin/config_generate
