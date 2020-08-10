#!/bin/bash
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
#rm ./package/feeds/packages/node
#rm ./package/feeds/packages/node-*
#./scripts/feeds install -a -p node
#mkdir -p files/etc/config
#mkdir -p files/usr/share/rpcd/acl.d/
#cp /home/runner/work/mknop/mknop/network /home/runner/work/mknop/mknop/op/files/etc/config/
#cp /home/runner/work/mknop/mknop/luci-base.json /home/runner/work/mknop/mknop/op/files/usr/share/rpcd/acl.d/
wget https://github.com/upx/upx/releases/download/v3.96/upx-3.96-amd64_linux.tar.xz
xz -d upx-3.96-amd64_linux.tar.xz
tar xf upx-3.96-amd64_linux.tar
mv upx-3.96-amd64_linux/upx staging_dir/host/bin/
