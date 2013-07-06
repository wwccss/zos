cd /sources/
tar xvf inetutils*.gz
cd inetutils*

sed -i -e '/gets is a/d' lib/stdio.in.h

./configure --prefix=/usr  \
    --libexecdir=/usr/sbin \
    --localstatedir=/var   \
    --disable-ifconfig     \
    --disable-logger       \
    --disable-syslogd      \
    --disable-whois        \
    --disable-servers

make
make check
make install

mv -v /usr/bin/{hostname,ping,ping6,traceroute} /bin
