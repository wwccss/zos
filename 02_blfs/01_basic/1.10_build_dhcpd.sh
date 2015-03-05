pwd=`pwd`

cd /sources/blfs
tar xvf dhcpcd*.tar.bz2
cd dhcp*

pkg watch /mnt/lfs

./configure --libexecdir=/lib/dhcpcd \
              --dbdir=/var/tmp         &&
make

make install

cd ../blfs-boot*
make install-service-dhcpcd

cat > ifconfig << "EOF"
ONBOOT="yes"
IFACE="eth0"
SERVICE="dhcpcd"
DHCP_START="-b -q"
DHCP_STOP="-k"
EOF

ifconfig=`ls /etc/sysconfig/ifconfig*`
mv ifconfig $ifconfig
cp -v $pwd/setnic /etc/init.d/
cd /etc/rc.d/rc3.d/
ln -s ../../init.d/setnic ./S15setnic

cd /sources/blfs/dhcp*
pkg savelog dhcpcd
