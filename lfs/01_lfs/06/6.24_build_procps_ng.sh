cd /sources/
tar xvf procps-ng*.xz 
cd procps*

./configure --prefix=/usr                           \
            --exec-prefix=                          \
            --libdir=/usr/lib                       \
            --docdir=/usr/share/doc/procps-ng-3.3.6 \
            --disable-static                        \
            --disable-skill                         \
            --disable-kill

make

pushd testsuite
  sed -i -e 's|exec which sleep|exec echo /tools/bin/sleep|' \
         -e 's|999999|&9|'                       config/unix.exp
  sed -i -e 's|pmap_initname\\\$|pmap_initname|' pmap.test/pmap.exp
  make site.exp
  DEJAGNU=global-conf.exp runtest
popd

make install

mv -v /usr/lib/libprocps.so.* /lib
ln -sfv ../../lib/libprocps.so.1.1.0 /usr/lib/libprocps.so
