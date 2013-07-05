cd /sources/
tar zxvf  file*.gz
cd file*

./configure --prefix=/usr
make
make check
make install
