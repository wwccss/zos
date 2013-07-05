cd $LFS/sources
tar xvf diffutils*
cd diffutils*

sed -i -e '/gets is a/d' lib/stdio.in.h
./configure --prefix=/tools
make
make check
make install
