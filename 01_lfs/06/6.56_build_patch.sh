cd /sources/
tar xvf patch*.xz
cd patch*

./configure --prefix=/usr

make
make check
make install
