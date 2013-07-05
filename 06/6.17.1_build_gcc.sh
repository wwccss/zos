cd /sources/
tar jxvf gcc*.tar.bz2
cd gcc*

sed -i 's/install_to_$(INSTALL_DEST) //' libiberty/Makefile.in
sed -i 's/BUILD_INFO=info/BUILD_INFO=/' gcc/configure

case `uname -m` in
  i?86) sed -i 's/^T_CFLAGS =$/& -fomit-frame-pointer/' gcc/Makefile.in ;;
esac

sed -i -e /autogen/d -e /check.sh/d fixincludes/Makefile.in

mkdir -v ../gcc-build
cd ../gcc-build

../gcc-4.7.2/configure --prefix=/usr            \
                       --libexecdir=/usr/lib    \
                       --enable-shared          \
                       --enable-threads=posix   \
                       --enable-__cxa_atexit    \
                       --enable-clocale=gnu     \
                       --enable-languages=c,c++ \
                       --disable-multilib       \
                       --disable-bootstrap      \
                       --with-system-zlib
make
ulimit -s 32768
make -k check
../gcc-4.7.2/contrib/test_summary
