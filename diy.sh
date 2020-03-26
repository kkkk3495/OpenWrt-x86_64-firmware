#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

# Add Luci-theme
packages_path=package/openwrt-packages
mkdir -p $packages_path

git clone https://github.com/frainzy1477/luci-app-clash $packages_path/luci-app-clash
git clone https://github.com/vernesong/OpenClash $packages_path/OpenClash
git clone https://github.com/kuoruan/luci-app-kcptun $packages_path/luci-app-kcptun
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  $packages_path/luci-theme-argon

# Modify default IP
sed -i 's/192.168.1.1/192.168.110.1/g' package/base-files/files/bin/config_generate

# Add some default settings
curl -fsSL https://raw.githubusercontent.com/kkkk3495/OpenWrt-x86_64-firmware/master/zzz-default-settings > package/lean/default-settings/files/zzz-default-settings