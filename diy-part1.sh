#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git diy1 https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git;master' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages.git;main' feeds.conf.default
#sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(arm\|\|aarch64\)/g' package/lean/luci-app-cpufreq/Makefile
#sed -i 's/services/system/' package/lean/luci-app-cpufreq/luasrc/controller/cpufreq.lua
 
cd package/lean/
#rm -rf luci-app-vssr adguardhome  luci-lib-docker luci-app-dockerman luci-theme-argon luci-app-adguardhome brook chinadns-ng dns2socks \
#ipt2socks kcptun microsocks naiveproxy openssl1.1 v2ray-plugin simple-obfs pdnsd-alt ssocks tcping  trojan* xray v2ray
rm -rf luci-theme-argon
#rm -rf kcptun  lua-maxminddb small v2ray trojan shadowsocksr-libev ssocks chinadns-ng dns2socks ipt2socks  openssl1.1 v2ray-plugin simple-obfs pdnsd-alt


### theme ###
# luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
#sed -i 's/Microsoft Yahei/Sarasa UI SC/g' luci-theme-argon/htdocs/luci-static/argon/css/cascade.css
git clone https://github.com/jerrykuku/luci-app-argon-config.git


#docker
#git clone https://github.com/lisaac/luci-app-dockerman.git
#git clone https://github.com/lisaac/luci-lib-docker.git

#helloWorld
git clone https://github.com/jerrykuku/lua-maxminddb.git  #git lua-maxminddb 依赖
git clone https://github.com/garypang13/luci-app-bypass.git
git clone https://github.com/jerrykuku/luci-app-vssr.git 

# passwall 依赖
#brook  chinadns-ng   dns2socks  ipt2socks  kcptun  pdnsd-alt  simple-obfs  tcping  v2ray-plugin

#git clone https://github.com/xiaorouji/openwrt-passwall.git
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/brook
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/chinadns-ng
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-plus
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/hysteria


#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome
#svn co https://github.com/kenzok8/openwrt-packages/trunk/adguardhome
git clone https://github.com/ophub/luci-app-amlogic.git
