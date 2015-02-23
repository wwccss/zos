cd /sources/
tar xvf mpc*.tar.gz
cd mpc*

pkg watch /mnt/lfs

./configure --prefix=/usr --docdir=/usr/share/doc/mpc-1.0.2

make
make install

pkg savelog mpc
