cd $LFS/sources
rm -fr gcc-4.7.2
rm -fr gcc-build
tar jxvf gcc*
cd gcc*

cat gcc/limitx.h gcc/glimits.h gcc/limity.h > \
  `dirname $($LFS_TGT-gcc -print-libgcc-file-name)`/include-fixed/limits.h

cp -v gcc/Makefile.in{,.tmp}
sed 's/^T_CFLAGS =$/& -fomit-frame-pointer/' gcc/Makefile.in.tmp \
  > gcc/Makefile.in

for file in \
 $(find gcc/config -name linux64.h -o -name linux.h -o -name sysv4.h)
do
  cp -uv $file{,.orig}
  sed -e 's@/lib\(64\)\?\(32\)\?/ld@/tools&@g' \
  -e 's@/usr@/tools@g' $file.orig > $file
  echo '
#undef STANDARD_STARTFILE_PREFIX_1
#undef STANDARD_STARTFILE_PREFIX_2
#define STANDARD_STARTFILE_PREFIX_1 "/tools/lib/"
#define STANDARD_STARTFILE_PREFIX_2 ""' >> $file
  touch $file.orig
done

tar -Jxf ../mpfr-3.1.1.tar.xz
mv -v mpfr-3.1.1 mpfr
tar -Jxf ../gmp-5.1.1.tar.xz
mv -v gmp-5.1.1 gmp
tar -zxf ../mpc-1.0.1.tar.gz
mv -v mpc-1.0.1 mpc

sed -i 's/BUILD_INFO=info/BUILD_INFO=/' gcc/configure

mkdir -v ../gcc-build
cd ../gcc-build

CC=$LFS_TGT-gcc \
AR=$LFS_TGT-ar                  \
RANLIB=$LFS_TGT-ranlib          \
../gcc-4.7.2/configure          \
    --prefix=/tools             \
    --with-local-prefix=/tools  \
    --with-native-system-header-dir=/tools/include \
    --enable-clocale=gnu        \
    --enable-shared             \
    --enable-threads=posix      \
    --enable-__cxa_atexit       \
    --enable-languages=c,c++    \
    --disable-libstdcxx-pch     \
    --disable-multilib          \
    --disable-bootstrap         \
    --disable-libgomp           \
    --with-mpfr-include=$(pwd)/../gcc-4.7.2/mpfr/src \
    --with-mpfr-lib=$(pwd)/mpfr/src/.libs
make && make install

ln -sv gcc /tools/bin/cc
