cd /sources/
tar xvf grep*.xz 
cd grep*

./configure --prefix=/usr --bindir=/bin
make
make check
make install
