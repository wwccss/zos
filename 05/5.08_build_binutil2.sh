cd $LFS/sources

tar jxvf binutils-2.23.1.tar.bz2
cd binutils*

rm -fr ../binutils-build
mkdir -v ../binutils-build
cd ../binutils-build

CC=$LFS_TGT-gcc            \
AR=$LFS_TGT-ar             \
RANLIB=$LFS_TGT-ranlib     \

# see http://listarc.com/showthread.php?4393817-5.13.+Check-0.9.9 to fix the error when build check in 5.13
../binutils-2.23.1/configure \
    --prefix=/tools        \
    --disable-nls          \
    --with-lib-path=/tools/lib \
    --with-sysroot

make && make install

make -C ld clean
make -C ld LIB_PATH=/usr/lib:/lib
cp -v ld/ld-new /tools/bin
