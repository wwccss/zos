cd /sources/blfs
tar xvf openssl*.tar.gz
cd openssl*

pkg watch /mnt/lfs

patch -Np1 -i ../openssl-1.0.1i-fix_parallel_build-1.patch &&

./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic &&
make

make MANDIR=/usr/share/man MANSUFFIX=ssl install &&
install -dv -m755 /usr/share/doc/openssl-1.0.1i  &&

pkg savelog openssl
