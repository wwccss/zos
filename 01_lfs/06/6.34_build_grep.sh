cd /sources/
tar xvf grep*.xz 
cd grep*

pkg watch /mnt/lfs

./configure --prefix=/usr --bindir=/bin
make
make install

pkg savelog grep
