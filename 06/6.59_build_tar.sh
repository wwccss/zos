cd /sources/
tar jxvf tar*.bz2
cd tar*

sed -i -e '/gets is a/d' gnu/stdio.in.h
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin \
            --libexecdir=/usr/sbin
make
make check
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.26
