cd /sources/
tar xvf diffutils*.gz
cd diffutils*

sed -i -e '/gets is a/d' lib/stdio.in.h
./configure --prefix=/usr

make
make check
make install
