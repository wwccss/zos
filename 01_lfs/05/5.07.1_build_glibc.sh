cd $LFS/sources
tar xxvf glibc*.xz
cd glibc*

if [ ! -r /usr/include/rpc/types.h ]; then
  su -c 'mkdir -pv /usr/include/rpc'
  su -c 'cp -v sunrpc/rpc/*.h /usr/include/rpc'
fi

mkdir -v ../glibc-build
cd ../glibc-build

../glibc-2.20/configure                             \
      --prefix=/tools                               \
      --host=$LFS_TGT                               \
      --build=$(../glibc-2.20/scripts/config.guess) \
      --disable-profile                             \
      --enable-kernel=2.6.32                        \
      --with-headers=/tools/include                 \
      libc_cv_forced_unwind=yes                     \
      libc_cv_ctors_header=yes                      \
      libc_cv_c_cleanup=yes

make && make install
