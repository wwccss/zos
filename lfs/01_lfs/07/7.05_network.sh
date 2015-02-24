cd /etc/sysconfig/
cat > ifconfig.eth0 << "EOF"
ONBOOT=yes
IFACE=eth0
SERVICE=ipv4-static
IP=10.0.2.15
GATEWAY=10.0.2.2
PREFIX=24
BROADCAST=10.0.2.255
EOF

cat > /etc/resolv.conf << "EOF"
# Begin /etc/resolv.conf

domain zentao
nameserver 10.0.2.2

# End /etc/resolv.conf
EOF
cat > /etc/hosts << "EOF"
# Begin /etc/hosts (network card version)

127.0.0.1 localhost
10.0.2.2  vhost

# End /etc/hosts (network card version)
EOF
echo "HOSTNAME=zentao" > /etc/sysconfig/network          
