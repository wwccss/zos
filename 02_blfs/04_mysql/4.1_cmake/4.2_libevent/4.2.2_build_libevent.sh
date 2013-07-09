cd /sources/blfs
tar xvf libevent*.tar.gz
cd libevent*

./configure --prefix=/usr --disable-static &&
make
make check

sudo make install

sudo install -v -m755 -d /usr/share/doc/libevent-2.0.21/api &&
sudo cp      -v -R       doxygen/html/* \
                    /usr/share/doc/libevent-2.0.21/api
