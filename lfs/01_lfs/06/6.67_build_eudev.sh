cd /sources/
tar -xvf eudev*.gz
cd eudev*

pkg watch /mnt/lfs

BLKID_CFLAGS=-I/tools/include       \
BLKID_LIBS='-L/tools/lib -lblkid'   \
./configure --prefix=/usr           \
            --bindir=/sbin          \
            --sbindir=/sbin         \
            --libdir=/usr/lib       \
            --sysconfdir=/etc       \
            --libexecdir=/lib       \
            --with-rootprefix=      \
            --with-rootlibdir=/lib  \
            --enable-split-usr      \
            --enable-libkmod        \
            --enable-rule_generator \
            --enable-keymap         \
            --disable-introspection \
            --disable-gudev         \
            --disable-gtk-doc-html  \
            --with-firmware-path=/lib/firmware 

make 

mkdir -pv /lib/{firmware,udev}
mkdir -pv /lib/udev/rules.d
mkdir -pv /etc/udev/rules.d

make install

tar -xvf ../udev-lfs-20140408.tar.bz2
make -f udev-lfs-20140408/Makefile.lfs install

pkg savelog eudev
