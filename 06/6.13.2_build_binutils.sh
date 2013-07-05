cd /sources/
tar jxvf binutils*.bz2
cd binutils*

patch -Np1 -i ../binutils-2.23.1-testsuite_fix-1.patch
mkdir -v ../binutils-build
cd ../binutils-build
../binutils-2.23.1/configure --prefix=/usr --enable-shared

make tooldir=/usr
make check
