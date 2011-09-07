# Mac ports: port install lighttpd +ssl
# Ubuntu: apt-get install lighttpd
# Then change sslproxy.conf to reflect your setup
# self signed dummy certiciate (dummy.pem) was generate with:
# openssl req -new -x509 -keyout dummy.pem -out dummy.pem -days 10000 -nodes
# dont use this in production!

for LIGHTTPD in `which lighttpd` /opt/local/sbin/lighttpd  /usr/local/sbin/lighttpd ; do
  if [ -x "$LIGHTTPD" ] ; then
    exec $LIGHTTPD -D -f `dirname $0`/sslproxy.conf
  fi
done


