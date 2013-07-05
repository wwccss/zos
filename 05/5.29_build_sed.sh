cd $LFS/sources
tar jxvf  sed*.bz2
cd sed*

./configure --prefix=/tools
make
make check
make install
