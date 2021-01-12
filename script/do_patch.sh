#!/bin/bash

top_dir=`pwd`

TOP_DIR=`while true; do if [ -f TOPDIR.flag ]; then pwd;exit; else cd ..;fi;done;`



cp $TOP_DIR/lede/tools/ucl     $TOP_DIR/openwrt/tools/ -rf
cp $TOP_DIR/lede/tools/upx     $TOP_DIR/openwrt/tools/ -rf
cp $TOP_DIR/lede/package/lean  $TOP_DIR/openwrt/package/ -rf

make -C patch

