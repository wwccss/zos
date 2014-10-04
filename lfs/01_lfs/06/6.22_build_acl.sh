cd /sources/
tar xvf acl*.gz
cd acl*

pkg watch /mnt/lfs

sed -i -e 's|/@pkg_name@|&-@pkg_version@|' include/builddefs.in
sed -i "s:| sed.*::g" test/{sbits-restore,cp,misc}.test
sed -i -e "/TABS-1;/a if (x > (TABS-1)) x = (TABS-1);" \
      libacl/__acl_to_any_text.c

./configure --prefix=/usr \
              --bindir=/bin \
              --libexecdir=/usr/lib

make
make install install-dev install-lib
chmod -v 755 /usr/lib/libacl.so

mv -v /usr/lib/libacl.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libacl.so) /usr/lib/libacl.so

pkg build /sources/ini/acl.ini winst.log /
