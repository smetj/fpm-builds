#!/bin/bash

#https://github.com/downloads/libevent/libevent/libevent-2.0.20-stable.tar.gz
#./configure --libdir /lib64/event2 && make && make install

description="The libevent API provides a mechanism to execute a callback function when a specific event occurs on a file descriptor or after a timeout has been reached. Furthermore, libevent also support callbacks due to signals or regular timeouts."
maintainer="jelle@smetj.net"

fpm \
-s dir \
-t rpm \
--maintainer "$maintainer" \
--description "$description" \
-a "x86_64" \
-n "libevent" \
-v 2.0.20 \
--iteration 1 \
--before-install before_install.sh --after-install after_install.sh --before-remove before_remove.sh --after-remove after_remove.sh \
/usr/local/bin/event_rpcgen.py \
/usr/local/include/evhttp.h \
/usr/local/include/event.h \
/usr/local/include/event2 \
/usr/local/include/evdns.h \
/usr/local/include/evutil.h \
/usr/local/include/evrpc.h \
/usr/local/lib/libevent-2.0.so.5.1.8 \
/usr/local/lib/libevent_pthreads-2.0.so.5.1.8 \
/usr/local/lib/libevent.a \
/usr/local/lib/libevent.so \
/usr/local/lib/libevent_pthreads.so \
/usr/local/lib/libevent_core.a \
/usr/local/lib/libevent-2.0.so.5 \
/usr/local/lib/libevent_extra.la \
/usr/local/lib/libevent_extra-2.0.so.5 \
/usr/local/lib/libevent_pthreads.la \
/usr/local/lib/libevent_core-2.0.so.5 \
/usr/local/lib/libevent_extra-2.0.so.5.1.8 \
/usr/local/lib/pkgconfig/libevent.pc \
/usr/local/lib/pkgconfig/libevent_pthreads.pc \
/usr/local/lib/libevent_extra.a \
/usr/local/lib/libevent_core-2.0.so.5.1.8 \
/usr/local/lib/libevent.la \
/usr/local/lib/libevent_pthreads-2.0.so.5 \
/usr/local/lib/libevent_core.la \
/usr/local/lib/libevent_pthreads.a \
/usr/local/lib/libevent_core.so \
/usr/local/lib/libevent_extra.so
