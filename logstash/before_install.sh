groupadd -r logstash || true 
useradd -r -g logstash logstash ||true 
mkdir /var/run/logstash || true
mkdir /var/log/logstash || true
mkdir /usr/share/logstash || true
touch /var/log/logstash.log || true
chown logstash:logstash /var/log/logstash.log || true
