cd /sources/blfs
tar xvf acpid*.tar.xz
cd acpid*

./configure --prefix=/usr --docdir=/usr/share/doc/acpid-2.0.19 &&
make

sudo make install &&
sudo install -v -m755 -d /etc/acpi/events &&
sudo cp -r samples /usr/share/doc/acpid-2.0.19

cat > power << "EOF"
event=button/power
action=/etc/acpi/power.sh
EOF
sudo mv power /etc/acpi/events/

cat > power.sh << "EOF"
#!/bin/sh
/sbin/shutdown -h now "Power button pressed"
EOF

sudo mv power.sh /etc/acpi/

sudo chmod +x /etc/acpi/power.sh

cd ../blfs-boot*
sudo make install-acpid
