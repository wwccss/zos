cd /sources/
tar xvf bison*.xz
cd bison*

pkg watch /mnt/lfs

./configure --prefix=/usr

make
make install

pkg savelog bison
