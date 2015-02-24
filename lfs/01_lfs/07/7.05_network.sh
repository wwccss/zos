cd /tmp/
pkg watch /mnt/lfs

# create net rules.
bash /lib/udev/init-net-rules.sh

# create net config file.
cat > /etc/sysconfig/ifconfig.eth0 << "EOF"
ONBOOT=yes
IFACE=eth0
SERVICE=ipv4-static
IP=10.0.2.15
GATEWAY=10.0.2.2
PREFIX=24
BROADCAST=10.0.2.255
EOF

# set resolv.conf file.
cat > /etc/resolv.conf << "EOF"
domain zos
nameserver 223.6.6.6
nameserver 223.5.5.5
EOF

# set hosts file.
cat > /etc/hosts << "EOF"
127.0.0.1 localhost
EOF

# set hostname.
echo "HOSTNAME=zos" > /etc/sysconfig/network          

pkg savelog network-config
