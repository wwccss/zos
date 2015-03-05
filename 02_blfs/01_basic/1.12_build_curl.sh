cd /sources/blfs
tar xvf curl*.tar.bz2
cd curl*

pkg watch /mnt/lfs

./configure --prefix=/usr              \
            --disable-static           \
            --enable-threaded-resolver &&
make
make install

pkg savelog curl
