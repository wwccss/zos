cd $LFS/sources
tar xvf coreutils*.xz
cd coreutils*

./configure --prefix=/tools --enable-install-program=hostname
make
make RUN_EXPENSIVE_TESTS=yes check
make install
