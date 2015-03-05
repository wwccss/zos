cd /sources/
tar xvf pkg-config*.gz
cd pkg-config*

pkg watch /mnt/lfs

./configure --prefix=/usr         \
            --with-internal-glib  \
            --disable-host-tool   \
            --docdir=/usr/share/doc/pkg-config-0.28
make
make install

pkg savelog pkg-config
