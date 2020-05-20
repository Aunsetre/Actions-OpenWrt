cd package/lean/
# adguardhome
rm -rf k3screenctrl  luci-app-dockerman luci-lib-docker
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git

# luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
sed -i 's/Microsoft Yahei/Sarasa UI SC/ ' luci-theme-argon/htdocs/luci-static/argon/css/style.css

#docker
#git clone https://github.com/lisaac/luci-app-dockerman.git
#git clone https://github.com/lisaac/luci-lib-docker.git

git clone https://github.com/lwz322/luci-app-k3screenctrl.git
git clone https://github.com/lwz322/k3screenctrl.git
git clone https://github.com/lwz322/k3screenctrl_build.git
