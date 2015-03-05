cd /sources/
tar xvf man-db*.xz
cd man-db*

pkg watch /mnt/lfs

./configure --prefix=/usr                          \
            --docdir=/usr/share/doc/man-db-2.6.7.1 \
            --sysconfdir=/etc                      \
            --disable-setuid                       \
            --with-browser=/usr/bin/lynx           \
            --with-vgrind=/usr/bin/vgrind          \
            --with-grap=/usr/bin/grap
make
make install

pkg savelog man-db
