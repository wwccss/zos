cd /sources/
tar xvf libtool*.gz
cd libtool*

./configure --prefix=/usr
make
make check
make install
