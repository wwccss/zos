cd /sources/
tar xvf iproute*.xz
cd iproute*

pkg watch /mnt/lfs

sed -i '/^TARGETS/s@arpd@@g' misc/Makefile
sed -i /ARPD/d Makefile
sed -i 's/arpd.8//' man/man8/Makefile

make
make DOCDIR=/usr/share/doc/iproute2-3.16.0 install

pkg savelog iproute2
