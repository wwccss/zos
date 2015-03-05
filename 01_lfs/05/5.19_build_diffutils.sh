cd $LFS/sources
tar xvf diffutils*
cd diffutils*

./configure --prefix=/tools
make
make check
make install
