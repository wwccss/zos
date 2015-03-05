cd /sources/blfs
tar xvf pcre*.tar.bz2
cd pcre*

pkg watch /mnt/lfs

./configure --prefix=/usr                     \
            --docdir=/usr/share/doc/pcre-8.35 \
            --enable-unicode-properties       \
            --enable-pcre16                   \
            --enable-pcre32                   \
            --enable-pcregrep-libz            \
            --enable-pcregrep-libbz2          \
            --enable-pcretest-libreadline     \
            --disable-static                 &&
make

make install                     &&
mv -v /usr/lib/libpcre.so.* /lib &&
ln -sfv ../../lib/$(readlink /usr/lib/libpcre.so) /usr/lib/libpcre.so

pkg savelog pcre
