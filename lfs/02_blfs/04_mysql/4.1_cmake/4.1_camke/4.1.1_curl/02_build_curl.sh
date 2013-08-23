cd /sources/blfs
tar xvf curl*.tar.bz2
cd curl*

./configure --prefix=/usr              \
            --disable-static           \
            --enable-threaded-resolver \
            --with-ca-path=/etc/ssl/certs &&
make

sudo make install &&
sudo find docs \( -name "Makefile*" -o -name "*.1" -o -name "*.3" \) -exec rm {} \; &&
sudo install -v -d -m755 /usr/share/doc/curl-7.31.0 &&
sudo cp -v -R docs/*     /usr/share/doc/curl-7.31.0
