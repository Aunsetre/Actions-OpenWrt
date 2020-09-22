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
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#sed -i 's/git.openwrt.org\/project\/luci.git/github.com\/Lienol\/openwrt-luci.git;dev-17.01/' feeds.conf.default

# Add a feed source
sed -i '$a src-git node https://github.com/nxhack/openwrt-node-packages.git' feeds.conf.default
cd package/  

#rm -rf luci-app-vssr  luci-lib-docker luci-app-dockerman luci-theme-argon openwrt-packages  lua-maxminddb small

git clone https://github.com/jerrykuku/luci-theme-argon.git

#京东签到
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git  

# helloWorld
git clone https://github.com/jerrykuku/lua-maxminddb.git  #git lua-maxminddb 依赖
git clone https://github.com/jerrykuku/luci-app-vssr.git 

#git clone https://github.com/lisaac/luci-lib-docker.git
#git clone https://github.com/lisaac/luci-app-dockerman.git

#passwall 依赖
#brook  chinadns-ng   dns2socks  ipt2socks  kcptun  pdnsd-alt  simple-obfs  tcping  v2ray-plugin
git clone https://github.com/Lienol/openwrt-package.git

#n1-install-program
#git clone https://github.com/tuanqing/install-program
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/parted
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-flowoffload
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-cifsd
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-syncdial
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-netdata
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ipv6-helper#
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/UnblockNeteaseMusic
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/UnblockNeteaseMusicGo
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-unblockmusic
