# Mac ports: port install lighttpd +ssl
# Ubuntu: apt-get install lighttpd
# Then change sslproxy.conf to reflect your setup
# self signed dummy certiciate (dummy.pem) was generate with:
# openssl req -new -x509 -keyout dummy.pem -out dummy.pem -days 10000 -nodes
# dont use this in production!

LIGHTTPD=`which lighttpd`
if [ "$LIGHTTPD" = "" ] ; then
  LIGHTTPD="/opt/local/sbin/lighttpd"
fi

$LIGHTTPD -D -f `dirname $0`/sslproxy.conf

