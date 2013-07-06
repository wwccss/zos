cd /sources/
tar xvf bison*.xz
cd bison*

./configure --prefix=/usr

echo '#define YYENABLE_NLS 1' >> lib/config.h

make
make check
make install
