export SHELL=/bin/bash


.PHONY : all

all:
	@patchs=`find -name "*.patch"` ; \
	for p in $$patchs ; \
	do \
		patch -d ../openwrt -p1  < $$p ; \
	done
