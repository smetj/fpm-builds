#!/bin/bash

description="Gevent is a coroutine-based Python networking library that uses greenlet to provide a high-level synchronous API on top of the libevent event loop."
maintainer="jelle@smetj.net"

fpm \
-s dir \
-t rpm \
-d python -d libev \
--maintainer "$maintainer" \
--description "$description" \
-n "python-gevent" \
-v "1.0rc2" \
--iteration 1 \
--before-install before_install.sh --after-install after_install.sh --before-remove before_remove.sh --after-remove after_remove.sh \
/usr/lib64/python2.6/site-packages/gevent-1.0dev-py2.6-linux-x86_64.egg
