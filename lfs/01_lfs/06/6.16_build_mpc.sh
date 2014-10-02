cd /sources/
tar xvf mpc*.tar.gz
cd mpc*

pkg watch /mnt/lfs

./configure --prefix=/usr --docdir=/usr/share/doc/mpc-1.0.2

make
make html
make check
make install
make install-html

pkg build /sources/ini/mpc.ini winst.log /
