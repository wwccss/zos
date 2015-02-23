cd /sources/
tar xvf sed*.bz2
cd sed*

pkg watch /mnt/lfs

./configure --prefix=/usr --bindir=/bin --htmldir=/usr/share/doc/sed-4.2.2
make
make install

pkg savelog sed
