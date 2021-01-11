#!/bin/bash

top_dir=`pwd`

cp ./lede/tools/ucl ./openwrt/tools/ -rf
cp ./lede/tools/upx  ./openwrt/tools/ -rf
cp ./package/lean  ./openwrt/package/ -rf

make -C patch

