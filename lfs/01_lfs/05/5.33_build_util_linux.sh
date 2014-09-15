cd $LFS/sources
tar xvf  util-linux*.xz
cd util*

./configure --prefix=/tools                \
            --without-python               \
            --disable-makeinstall-chown    \
            --without-systemdsystemunitdir \
            PKG_CONFIG=""

make
make install
