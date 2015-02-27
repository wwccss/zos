cd /sources/blfs
tar xvf dhcpcd*.tar.bz2
cd dhcp*

./configure --libexecdir=/lib/dhcpcd \
            --dbdir=/run             \
            --sysconfdir=/etc &&
make

sudo make install

sudo sed -i "s;/var/lib;/run;g" dhcpcd-hooks/50-dhcpcd-compat &&
sudo install -v -m 644 dhcpcd-hooks/50-dhcpcd-compat /lib/dhcpcd/dhcpcd-hooks/

cd ../blfs-boot*
sudo make install-service-dhcpcd

cat > ifconfig << "EOF"
ONBOOT="yes"
IFACE="eth0"
SERVICE="dhcpcd"
DHCP_START="-b -q"
DHCP_STOP="-k"
EOF

ifconfig=`ls /etc/sysconfig/ifconfig*`
sudo mv ifconfig $ifconfig
sudo cp  -v ../../../bin/setnic /etc/init.d/
cd /etc/rc.d/rc3.d/
sudo ln -s ../../init.d/setnic ./S15setnic
