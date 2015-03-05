cd /sources/
tar jxvf binutils*.bz2
cd binutils*

patch -Np1 -i ../binutils-2.24-load_gcc_lto_plugin_by_default-1.patch
patch -Np1 -i ../binutils-2.24-lto_testsuite-1.patch
mkdir -v ../binutils-build
cd ../binutils-build
../binutils-2.24/configure --prefix=/usr   \
                           --enable-shared \
                           --disable-werror

make tooldir=/usr
make -k check
