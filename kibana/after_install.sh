mkdir /var/spool/sinatra/pid || true
ln -sf /usr/share/ruby/kibana/sample/kibana /etc/init.d/kibana || true
chmod 750 /etc/init.d/kibana || true
