cd /sources/blfs
tar xvf libexif*.tar.bz2
cd libexif*

pkg watch /mnt/lfs

./configure --prefix=/usr \
            --with-doc-dir=/usr/share/doc/libexif-0.6.21 \
            --disable-static &&
make
make install

pkg savelog libexif
