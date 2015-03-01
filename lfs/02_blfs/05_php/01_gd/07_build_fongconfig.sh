cd /sources/blfs
tar xvf fontconfig*.tar.bz2
cd fontconfig*

pkg watch /mnt/lfs

./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-docs       \
            --docdir=/usr/share/doc/fontconfig-2.11.1 &&
make
make install

pkg savelog fontconfig
