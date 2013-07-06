cd $LFS/sources
tar zxvf tcl*
cd tcl*

cd unix
./configure --prefix=/tools

make
TZ=UTC make test
make install

chmod -v u+w /tools/lib/libtcl8.6.so
make install-private-headers
ln -sv tclsh8.6 /tools/bin/tclsh
