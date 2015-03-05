cd $LFS/sources
tar xvf deja*
cd deja*

./configure --prefix=/tools

make install
make check
