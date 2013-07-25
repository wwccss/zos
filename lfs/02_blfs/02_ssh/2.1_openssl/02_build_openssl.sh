cd /sources/blfs
tar xvf openssl*.tar.gz
cd openssl*

patch -Np1 -i ../openssl-1.0.1e-fix_parallel_build-1.patch &&
patch -Np1 -i ../openssl-1.0.1e-fix_pod_syntax-1.patch &&

./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         shared                \
         zlib-dynamic &&
make

make test

make MANDIR=/usr/share/man MANSUFFIX=ssl install &&
install -dv -m755 /usr/share/doc/openssl-1.0.1e  &&
cp -vfr doc/*     /usr/share/doc/openssl-1.0.1e
