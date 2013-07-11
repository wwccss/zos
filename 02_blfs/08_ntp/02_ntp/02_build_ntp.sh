cd /sources/blfs
tar xvf ntp*.tar.gz
cd ntp*

sudo groupadd -g 87 ntp &&
sudo useradd -c "Network Time Protocol" -d /var/lib/ntp -u 87 \
        -g ntp -s /bin/false ntp

./configure --prefix=/usr --sysconfdir=/etc \
            --with-binsubdir=sbin &&
make

sudo make install &&
sudo install -v -m755 -d /usr/share/doc/ntp-4.2.6p5 &&
sudo cp -v -R html/* /usr/share/doc/ntp-4.2.6p5/

sudo touch /etc/ntp.conf
sudo chown z:z /etc/ntp.conf

cat > /etc/ntp.conf << "EOF"
# Asia
server 0.asia.pool.ntp.org

# Australia
server 0.oceania.pool.ntp.org

# Europe
server 0.europe.pool.ntp.org

# North America
server 0.north-america.pool.ntp.org

# South America
server 2.south-america.pool.ntp.org

driftfile /var/cache/ntp.drift
pidfile   /var/run/ntpd.pid
EOF

sudo chown root:root /etc/ntp.conf

cd ../blfs-boot*
sudo make install-ntpd
