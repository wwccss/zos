cd /sources/
tar xvf automake*.xz
cd automake*

pkg watch /mnt/lfs

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.14.1

make
make install

pkg savelog automake
