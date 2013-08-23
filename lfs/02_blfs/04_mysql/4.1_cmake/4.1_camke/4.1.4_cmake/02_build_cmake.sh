cd /sources/blfs
tar xvf cmake*.tar.gz

cd cmake*
./bootstrap --prefix=/usr       \
            --system-libs       \
            --mandir=/share/man \
            --docdir=/share/doc/cmake-2.8.11 &&
make

make test

sudo make install
