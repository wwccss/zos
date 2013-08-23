cd /sources/
tar xvf iproute*.xz
cd iproute*

sed -i '/^TARGETS/s@arpd@@g' misc/Makefile
sed -i /ARPD/d Makefile
sed -i 's/arpd.8//' man/man8/Makefile

sed -i 's/-Werror//' Makefile

make DESTDIR=

make DESTDIR=              \
     MANDIR=/usr/share/man \
     DOCDIR=/usr/share/doc/iproute2-3.8.0 install
