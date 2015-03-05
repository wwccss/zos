cd /sources/
tar xvf gdbm*.gz
cd gdbm*

pkg watch /mnt/lfs

./configure --prefix=/usr --enable-libgdbm-compat
make
make install

pkg savelog gdbm
