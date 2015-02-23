cd /sources/
tar xvf m4*.xz
cd m4*

pkg watch /mnt/lfs

./configure --prefix=/usr
make

make install

pkg savelog m4
