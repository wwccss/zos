cd /sources/blfs
tar xvf libarchive*.tar.gz
cd libarchive*

./configure --prefix=/usr --disable-static &&
make
make check
sudo make install
