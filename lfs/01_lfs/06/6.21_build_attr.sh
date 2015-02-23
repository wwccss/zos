cd /sources/
tar xvf attr*.gz
cd attr*

pkg watch /mnt/lfs

sed -i -e 's|/@pkg_name@|&-@pkg_version@|' include/builddefs.in
./configure --prefix=/usr --bindir=/bin

make
make -j1 tests root-tests

make install install-dev install-lib
chmod -v 755 /usr/lib/libattr.so

mv -v /usr/lib/libattr.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libattr.so) /usr/lib/libattr.so

pkg savelog attr
