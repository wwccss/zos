cd /sources/blfs
tar xvf fontconfig*.tar.bz2
cd fontconfig*

./configure --prefix=/usr \
            --sysconfdir=/etc \
            --localstatedir=/var \
            --docdir=/usr/share/doc/fontconfig-2.10.93 \
            --disable-docs \
            --disable-static &&
make

sudo make install
