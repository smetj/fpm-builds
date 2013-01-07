#!/bin/bash

#http://dist.schmorp.de/libev/libev-4.11.tar.gz
#./configure && make && make install

description="A full-featured and high-performance event loop that is loosely modelled after libevent, but without its limitations and bugs."
maintainer="jelle@smetj.net"

fpm \
-s dir \
-t rpm \
--maintainer "$maintainer" \
--description "$description" \
-a "x86_64" \
-n "libev" \
-v 4.11 \
--iteration 1 \
--before-install before_install.sh --after-install after_install.sh --before-remove before_remove.sh --after-remove after_remove.sh \
./include/ev++.h \
./include/event.h \
./include/ev.h \
./lib/libev.a \
./lib/libev.so.4.0.0 \
./lib/libev.so.4 \
./lib/libev.so \
./lib/libev.la \
./share/man/man3/ev.3
