cd /sources/blfs
tar xvf libevent*.tar.gz
cd libevent*

pkg watch /mnt/lfs

./configure --prefix=/usr --disable-static &&
make
make install

pkg savelog libevent
