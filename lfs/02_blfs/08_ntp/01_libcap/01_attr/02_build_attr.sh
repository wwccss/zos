cd /sources/blfs
tar xvf attr*.tar.gz
cd attr*

sed -i -e 's|/@pkg_name@|&-@pkg_version@|' include/builddefs.in &&

INSTALL_USER=root  \
INSTALL_GROUP=root \
./configure --prefix=/usr --disable-static &&
make

sudo make install install-dev install-lib &&
sudo chmod -v 755 /usr/lib/libattr.so.1.1.0 &&
sudo mv -v /usr/lib/libattr.so.* /lib &&
sudo ln -sfv ../../lib/libattr.so.1 /usr/lib/libattr.so
