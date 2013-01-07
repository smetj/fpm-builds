groupadd -r elasticsearch || true 
useradd -r -g elasticsearch elasticsearch ||true 
mkdir /var/run/elasticsearch > /dev/null 2>&1 || true
mkdir /var/log/elasticsearch > /dev/null 2>&1 || true
mkdir /var/lib/elasticsearch > /dev/null 2>&1 || true
mkdir /var/tmp/elasticsearch > /dev/null 2>&1 || true
chown elasticsearch:elasticsearch /var/run/elasticsearch /var/tmp/elasticsearch /var/log/elasticsearch /var/lib/elasticsearch || true
