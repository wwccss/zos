cd /sources/
tar xvf gdbm*.gz
cd gdbm*

./configure --prefix=/usr --enable-libgdbm-compat
make
make check
make install
