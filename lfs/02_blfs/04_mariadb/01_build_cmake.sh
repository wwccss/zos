cd /sources/blfs
tar xvf cmake*.tar.gz
cd cmake*

pkg watch /mnt/lfs

./bootstrap --prefix=/usr       \
            --system-libs       \
            --mandir=/share/man \
            --docdir=/share/doc/cmake-3.0.1   &&
make
make install

pkg savelog cmake
