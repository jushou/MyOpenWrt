ifeq ($(TOP_DIR),)
export TOP_DIR=$(shell while true; do if [ -f TOPDIR.flag ]; then pwd;exit; else cd ..;fi;done;)
endif

export SHELL = /bin/bash

all:init do_patch
	

init:
	$(TOP_DIR)/script/init.sh
	
do_patch:
	$(TOP_DIR)/script/do_patch.sh
	
clean:

distclean:
	@rm lede openwrt -rf
	
.PHONY := clean distclean