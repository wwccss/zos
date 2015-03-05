cd /sources/blfs
tar xvf ctags*.tar.gz
cd ctags*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make install

pkg savelog ctags
