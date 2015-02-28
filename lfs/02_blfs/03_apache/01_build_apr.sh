cd /sources/blfs
tar xvf apr*.tar.bz2
cd apr*

./configure --prefix=/usr --disable-static \
  --with-installbuilddir=/usr/share/apr-1/build &&
make

sudo make install
