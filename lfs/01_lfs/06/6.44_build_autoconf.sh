cd /sources/
tar xvf autoconf*.xz
cd autoconf*

pkg watch /mnt/lfs

./configure --prefix=/usr

make
make install

pkg savelog autoconf
