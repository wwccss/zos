cd $LFS/sources
tar zxvf check-0.9.9.tar.gz
cd check-0.9.9

./configure --prefix=/tools
make
make check
make install
