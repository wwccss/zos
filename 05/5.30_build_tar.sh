cd $LFS/sources
tar jxvf  tar*.bz2
cd tar*

sed -i -e '/gets is a/d' gnu/stdio.in.h

./configure --prefix=/tools
make
make check
make install
