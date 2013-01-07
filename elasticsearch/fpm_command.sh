#!/bin/bash

#https://github.com/downloads/elasticsearch/elasticsearch/elasticsearch-0.19.10.tar.gz

description="An Open Source (Apache 2), Distributed, RESTful, Search Engine built on top of Apache Lucene."
maintainer="jelle@smetj.net"

fpm \
-s dir \
-t rpm \
-d java-1.7.0-openjdk \
--maintainer "$maintainer" \
--description "$description" \
-n "elasticsearch" \
-v "0.19.10" \
--iteration 2 \
--before-install before_install.sh --after-install after_install.sh --before-remove before_remove.sh --after-remove after_remove.sh \
/etc/elasticsearch \
/etc/sysconfig/elasticsearch \
/etc/init.d/elasticsearch \
/usr/share/java/elasticsearch \
