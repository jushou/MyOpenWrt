#!/bin/bash

top_dir=`pwd`

lede_sparse_check(){

	git init    #git初始化
	git remote add -f origin https://github.com/coolsnowwolf/lede.git   #添加远程仓库地址
	git config core.sparsecheckout true    #开启sparse checkout功能
	echo "tools/upx" >> .git/info/sparse-checkout   #fileName需要拉去的文件夹名称
	echo "tools/ucl" >> .git/info/sparse-checkout   #fileName需要拉去的文件夹名称
	echo "package/lean" >> .git/info/sparse-checkout   #fileName需要拉去的文件夹名称
	cat .git/info/sparse-checkout   #查看配置文件信息
	git pull origin master    #拉取远程哪个分支的文件目录，这里是master上的分支
}



if [ ! -d lede  ]; then
	mkdir lede
	cd lede
	lede_sparse_check
else
	cd lede
	git pull origin master:master
fi

cd $top_dir

if [ ! -d openwrt  ]; then
	git clone https://github.com/openwrt/openwrt.git
elif [ ! -d openwrt/.git ]; then
	rm openwrt -rf
	git clone https://github.com/openwrt/openwrt.git
else
	cd openwrt
	git pull origin master:master
fi

