cd /sources/
tar jxvf sed*.bz2
cd sed*

./configure --prefix=/usr --bindir=/bin --htmldir=/usr/share/doc/sed-4.2.2
make
make html
make check
make install
make -C doc install-html

