cd /sources/blfs
tar xvf ntp*.tar.gz
cd ntp*

pkg watch /mnt/lfs

groupadd -g 87 ntp &&
useradd -c "Network Time Protocol" -d /var/lib/ntp -u 87 \
        -g ntp -s /bin/false ntp

./configure --prefix=/usr         \
            --sysconfdir=/etc     \
            --enable-linuxcaps    \
            --with-binsubdir=sbin \
            --with-lineeditlibs=readline &&
make

make install &&
install -v -o ntp -g ntp -d /var/lib/ntp

cat > /etc/ntp.conf << "EOF"
server 0.asia.pool.ntp.org
server 0.oceania.pool.ntp.org
server 0.europe.pool.ntp.org
server 0.north-america.pool.ntp.org
server 2.south-america.pool.ntp.org
driftfile /var/cache/ntp.drift
pidfile   /var/run/ntpd.pid
EOF

cd ../blfs-boot*
make install-ntpd

cd -
pkg savelog ntp
