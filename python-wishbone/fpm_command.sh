#!/bin/bash

#https://github.com/smetj/wishbone/tarball/v0.2

description="Wishbone is a Python programming library to write asynchronous event pipelines mainly focussed on event processing."
maintainer="jelle@smetj.net"
fpm \
-a all \
-s dir \
-t rpm \
-d python-gevent \
-d python-amqplib \
-d python-snappy \
-d python-daemon \
-d python-stopwatch \
-d python-jsonschema \
-d python-pymongo \
-d python-pyes \
-d "python-gevent >= 0.13.8" \
-d "python-pyes >= 0.19.1" \
-d "python-pymongo >= 2.3" \
-d "python-snappy >= 0.4" \
-d "python-stopwatch >= 0.3.1" \
-d "python-ordereddict >= 1.1" \
--maintainer "$maintainer" \
--description "$description" \
-n "python-wishbone" \
-v "0.2" \
--iteration 1 \
--before-install before_install.sh --after-install after_install.sh --before-remove before_remove.sh --after-remove after_remove.sh \
/usr/lib/python2.6/site-packages/wishbone-0.2-py2.6.egg
