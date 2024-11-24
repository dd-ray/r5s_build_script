#!/bin/bash

# 自定义脚本
# luci-app-webdav
git clone https://$github/vernesong/OpenClash package/new/luci-app-openclash
git clone https://$github/tty228/luci-app-wechatpush package/new/luci-app-wechatpush


curl -skLo files/etc/init.d/tailscale $mirror/openwrt/files/etc/init.d/tailscale
# https://pkgs.tailscale.com/stable
if [ "$platform" = "rk3568" ]; then
    wget https://pkgs.tailscale.com/stable/tailscale_1.76.6_arm64.tgz
    tar zxvf tailscale_1.76.6_arm64.tgz
    mv tailscale_1.76.6_arm64/tailscale files/usr/sbin
    mv tailscale_1.76.6_arm64/tailscaled files/usr/sbin
else
    wget https://pkgs.tailscale.com/stable/tailscale_1.76.6_amd64.tgz
    tar zxvf tailscale_1.76.6_amd64.tgz
    mv tailscale_1.76.6_amd64/tailscale files/usr/sbin
    mv tailscale_1.76.6_amd64/tailscaled files/usr/sbin
fi


