#!/bin/bash

#http://semicomplete.com/files/logstash/logstash-1.1.1-monolithic.jar

description="Ship logs from any source, parse them, get the right timestamp, index them, and search them."
maintainer="jelle@smetj.net"

fpm \
-s dir \
-t rpm \
-d java-1.7.0-openjdk \
--maintainer "$maintainer" \
--description "$description" \
-n "logstash" \
-v "1.1.5" \
-a "all" \
--iteration 1 \
--before-install before_install.sh --after-install after_install.sh --before-remove before_remove.sh --after-remove after_remove.sh \
/etc/logstash.conf \
/etc/init.d/logstash \
/etc/rsyslog.d/logstash.conf \
/usr/share/java/logstash/logstash-1.1.5-monolithic.jar
