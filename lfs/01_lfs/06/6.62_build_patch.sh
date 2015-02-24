cd /sources/
tar xvf patch*.xz
cd patch*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make install

pkg savelog patch
