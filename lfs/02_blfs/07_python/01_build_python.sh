cd /sources/blfs
tar xvf Python*.tar.xz
cd Python*

pkg watch /mnt/lfs

./configure --prefix=/usr       \
            --enable-shared     \
            --with-system-expat \
            --with-system-ffi   \
            --enable-unicode=ucs4 &&
make
make install &&
chmod -v 755 /usr/lib/libpython2.7.so.1.0

pkg savelog python27
