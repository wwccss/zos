cd /sources/
tar xvf inetutils*.gz
cd inetutils*

pkg watch /mnt/lfs

echo '#define PATH_PROCNET_DEV "/proc/net/dev"' >> ifconfig/system/linux.h 

./configure --prefix=/usr  \
            --localstatedir=/var   \
            --disable-logger       \
            --disable-whois        \
            --disable-servers
make
make install

mv -v /usr/bin/{hostname,ping,ping6,traceroute} /bin
mv -v /usr/bin/ifconfig /sbin 

pkg savelog inetutils
