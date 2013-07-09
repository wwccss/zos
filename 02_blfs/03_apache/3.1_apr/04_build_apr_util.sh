cd /sources/blfs
tar xvf apr-util*.tar.bz2
cd apr-uti*

./configure --prefix=/usr       \
            --with-apr=/usr     \
            --with-gdbm=/usr    \
            --with-openssl=/usr \
            --with-crypto &&
make
make test
sudo make install


