cd $LFS/sources
tar zxvf deja*
cd deja*

./configure --prefix=/tools

make install
make check
