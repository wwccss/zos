cd $LFS/sources
tar zxvf bzip*.gz
cd bzip*

make
make PREFIX=/tools install
