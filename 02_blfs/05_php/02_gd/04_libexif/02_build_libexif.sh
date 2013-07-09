cd /sources/blfs
tar xvf libexif*.tar.bz2
cd libexif*

./configure --prefix=/usr \
            --with-doc-dir=/usr/share/doc/libexif-0.6.21 \
            --disable-static &&
make

sudo make install
