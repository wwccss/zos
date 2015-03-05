cd /sources/blfs
tar xvf acpid*.tar.xz
cd acpid*

pkg watch /mnt/lfs

./configure --prefix=/usr --docdir=/usr/share/doc/acpid-2.0.23 &&
make

make install &&
install -v -m755 -d /etc/acpi/events

cat > power << "EOF"
event=button/power
action=/etc/acpi/power.sh
EOF
mv power /etc/acpi/events/

cat > power.sh << "EOF"
#!/bin/sh
/sbin/shutdown -h now "Power button pressed"
EOF

mv power.sh /etc/acpi/

chmod +x /etc/acpi/power.sh

cd ../blfs-boot*
make install-acpid

cd -
pkg savelog acpid
