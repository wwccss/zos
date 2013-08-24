cd /sources/blfs
tar xvf pcre*.tar.bz2
cd pcre*

./configure --prefix=/usr                     \
            --docdir=/usr/share/doc/pcre-8.33 \
            --enable-utf                      \
            --enable-unicode-properties       \
            --enable-pcregrep-libz            \
            --enable-pcregrep-libbz2          \
            --enable-pcretest-libreadline     \
            --disable-static                 &&
make

make test

sudo make install                     &&
sudo mv -v /usr/lib/libpcre.so.* /lib &&
sudo ln -sfv ../../lib/libpcre.so.1.2.1 /usr/lib/libpcre.so
