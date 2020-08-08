cd package/
# adguardhome
rm -rf  luci-app-dockerman luci-lib-docker luci-theme-argon

# luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git
sed -i 's/Microsoft Yahei/Sarasa UI SC/' luci-theme-argon/htdocs/luci-static/argon/css/cascade.css

#git clone https://github.com/tty228/luci-app-serverchan.git
svn co https://github.com/kenzok8/openwrt-packages/trunk/adguardhome/
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome

git clone https://github.com/lwz322/luci-app-k3screenctrl.git
git clone https://github.com/lwz322/k3screenctrl.git
git clone https://github.com/lwz322/k3screenctrl_build.git
