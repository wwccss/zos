cd $LFS/sources
tar xvf gcc*.bz2
cd $LFS/sources/gcc*

mkdir -pv ../gcc-build
cd ../gcc-build

../gcc-4.9.1/libstdc++-v3/configure \
    --host=$LFS_TGT                 \
    --prefix=/tools                 \
    --disable-multilib              \
    --disable-shared                \
    --disable-nls                   \
    --disable-libstdcxx-threads     \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/4.9.1

make 
make install

rm -frv /mnt/lfs/sources/gcc-4.9.1
rm -frv /mnt/lfs/sourcesgcc-build
