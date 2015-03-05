cd /sources/
tar xvf libtool*.gz
cd libtool*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make install

pkg savelog libtool
