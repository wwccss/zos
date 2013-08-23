cd $LFS/sources
tar zxvf bash*.gz
cd bash*

patch -Np1 -i ../bash-4.2-fixes-11.patch
./configure --prefix=/tools --without-bash-malloc
make
make tests
make install
ln -sv bash /tools/bin/sh
