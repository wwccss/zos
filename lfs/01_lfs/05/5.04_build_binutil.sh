cd $LFS/sources

tar jxvf binutils-2.24.tar.bz2
cd binutils*

mkdir -v ../binutils-build
cd ../binutils-build

../binutils-2.24/configure     \
    --prefix=/tools            \
    --with-sysroot=$LFS        \
    --with-lib-path=/tools/lib \
    --target=$LFS_TGT          \
    --disable-nls              \
    --disable-werror

time make && make install

rm -frv /mnt/lfs/sources/binutils-2.24
rm -frv /mnt/lfs/sources/binutils-build
