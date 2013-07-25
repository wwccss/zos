cd /sources/
tar xvf automake*.xz
cd automake*

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.13.1

make
make install
