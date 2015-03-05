cd /sources/blfs
tar xvf apr-1.5.1.tar.bz2
cd apr-1.5.1

pkg watch /mnt/lfs

./configure --prefix=/usr    \
  --disable-static \
  --with-installbuilddir=/usr/share/apr-1/build &&
make
make install

pkg savelog apr
