cd $LFS/sources
tar jxvf make*.bz2
cd make*

./configure --prefix=/tools
make
make check
make install
