cd $LFS/sources
tar jxvf m4*.bz2
cd m4*

sed -i -e '/gets is a/d' lib/stdio.in.h

./configure --prefix=/tools
make
make check
make install
