cd /sources/
tar xvf mpfr*.tar.xz
cd mpfr*

./configure  --prefix=/usr        \
             --enable-thread-safe \
             --docdir=/usr/share/doc/mpfr-3.1.1

make
make check
