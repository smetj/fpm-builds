#!/bin/bash
description=""
maintainer="Jelle Smet jelle.smet@tomtom.com"
../sync_nagios_plugin xxx && fpm \
-d xxx \
--maintainer "$maintainer" \
--description "$description" \
-a "all" \
-n "nagios-plugins-" \
-v 0.1 \
--iteration 1 \
-s dir \
-t rpm \
--before-install before_install.sh --after-install after_install.sh --before-remove before_remove.sh --after-remove after_remove.sh \
