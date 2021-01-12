export SHELL=/bin/bash
ifeq ($(TOP_DIR),)
export TOP_DIR=$(shell while true; do if [ -f TOPDIR.flag ]; then pwd;exit; else cd ..;fi;done;)
endif

.PHONY : all

all:
	@if [ ! -d $(TOP_DIR)/tmp/patched ]; then \
		mkdir $(TOP_DIR)/tmp/patched -p; \
	fi
	@patchs=`find -name "*.patch"` ; \
	for p in $$patchs ; \
	do \
		if [ ! -e $(TOP_DIR)/tmp/patched/$$p.patched ]; then \
			patch -d ../openwrt -p1 < $$p ; \
			touch $(TOP_DIR)/tmp/patched/$$p.patched; \
		fi \
	done
