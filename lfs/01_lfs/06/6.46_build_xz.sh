cd /sources/
tar xvf xz*.xz
cd xz*

./configure --prefix=/usr --libdir=/lib --docdir=/usr/share/doc/xz-5.0.4
make
make check

make pkgconfigdir=/usr/lib/pkgconfig install
