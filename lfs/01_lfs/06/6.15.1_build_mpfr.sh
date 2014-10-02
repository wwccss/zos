cd /sources/
tar xvf mpfr*.tar.xz
cd mpfr*

patch -Np1 -i ../mpfr-3.1.2-upstream_fixes-2.patch

./configure  --prefix=/usr        \
             --enable-thread-safe \
             --docdir=/usr/share/doc/mpfr-3.1.2

make
make html
make check
