cd /sources/
tar xvf glibc*.tar.xz
cd glibc*

patch -Np1 -i ../glibc-2.20-fhs-1.patch

mkdir -v ../glibc-build
cd ../glibc-build

../glibc-2.20/configure    \
    --prefix=/usr          \
    --disable-profile      \
    --enable-kernel=2.6.32 \
    --enable-obsolete-rpc
make
