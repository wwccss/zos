cd /sources/
tar xvf autoconf*.xz
cd autoconf*

./configure --prefix=/usr

make
make check
make install
