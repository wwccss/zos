cd $LFS/sources
tar xvf file*.gz
cd file*

./configure --prefix=/tools
make
make check
make install
