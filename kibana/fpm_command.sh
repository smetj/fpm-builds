#!/bin/bash

#http://github.com/rashidkpc/Kibana/tarball/kibana-ruby

description="Make sense of a mountain of logs."
maintainer="jelle@smetj.net"
fpm \
-s dir \
-t rpm \
-d ruby \
-d "rubygem-sinatra >= 1.3.3" \
-d "rubygem-curb >= 0.8.1" \
-d "rubygem-rack = 1.4.1-1" \
-d "rubygem-rack-protection >= 1.2.0" \
-d "rubygem-tilt >= 1.3.3" \
-d "rubygem-tzinfo >= 0.3.33" \
-d rubygem-daemons -d rubygem-fastercsv -d rubygem-json -d rubygem-rack \
--maintainer "$maintainer" \
--description "$description" \
-n "kibana" \
-v "0.1" \
--iteration 1 \
--before-install before_install.sh --after-install after_install.sh --before-remove before_remove.sh --after-remove after_remove.sh \
/etc/init.d/kibana \
/usr/share/ruby/kibana 
