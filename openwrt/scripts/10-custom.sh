#!/bin/bash

# 自定义脚本
# OpenClash
git clone https://$github/vernesong/OpenClash package/new/luci-app-openclash
# wechatpush
git clone https://$github/tty228/luci-app-wechatpush package/new/luci-app-wechatpush

# OpenWrt-mihomo
git clone https://$github/morytyann/OpenWrt-mihomo
mv OpenWrt-mihomo/mihomo package/new/mihomo
mv OpenWrt-mihomo/luci-app-mihomo package/new/luci-app-mihomo