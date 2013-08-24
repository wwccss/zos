cd /sources/blfs
tar xvf libxml*.tar.gz
cd libxml*

./configure --prefix=/usr --disable-static --with-history &&
make

sudo make install
