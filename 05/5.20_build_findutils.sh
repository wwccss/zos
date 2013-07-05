cd $LFS/sources
tar xvf findutils*.gz
cd findutils*

./configure --prefix=/tools
make
make check
make install
