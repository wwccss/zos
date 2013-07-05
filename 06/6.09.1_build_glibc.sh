cd /sources/
tar xvf glibc*.tar.xz
cd glibc*

mkdir -v ../glibc-build
cd ../glibc-build

../glibc-2.17/configure  \
    --prefix=/usr          \
    --disable-profile      \
    --enable-kernel=2.6.25 \
    --libexecdir=/usr/lib/glibc
make
