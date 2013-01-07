groupadd -r kibana || true 
useradd -r -g kibana kibana ||true 
mkdir /var/run/kibana || true
mkdir -p /var/spool/sinatra/pid || true
touch /var/log/kibana.log || true
chown kibana:kibana /var/log/kibana.log || true
