cd /sources/blfs
tar xvf apr-util*.tar.bz2
cd apr-uti*

pkg watch /mnt/lfs

./configure --prefix=/usr       \
            --with-apr=/usr     \
            --with-gdbm=/usr    \
            --with-openssl=/usr \
            --with-crypto &&
make
make install

pkg savelog apr-util
