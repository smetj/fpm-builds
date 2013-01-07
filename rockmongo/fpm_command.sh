#!/bin/bash
description="A MongoDB administration tool, written in PHP5, is Best in PHP world, more like PHPMyAdmin."
maintainer="Jelle Smet jelle.smet@tomtom.com"
fpm \
-d httpd \
-d php-pecl-mongo \
-d php \
--maintainer "$maintainer" \
--description "$description" \
-a "all" \
-n "rockmongo" \
-v 1.1.2 \
--iteration 1 \
-s dir \
-t rpm \
--before-install before_install.sh --after-install after_install.sh --before-remove before_remove.sh --after-remove after_remove.sh \
/srv/rockmongo \
/etc/httpd/conf.d/rockmongo.conf
