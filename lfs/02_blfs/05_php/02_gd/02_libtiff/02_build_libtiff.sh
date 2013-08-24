cd /sources/blfs
tar xvf tiff*.tar.gz
cd tiff*

./configure --prefix=/usr --disable-static &&
make

sudo make install
