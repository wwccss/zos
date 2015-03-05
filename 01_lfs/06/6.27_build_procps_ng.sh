cd /sources/
tar xvf procps-ng*.xz 
cd procps*

pkg watch /mnt/lfs

./configure --prefix=/usr                           \
            --exec-prefix=                          \
            --libdir=/usr/lib                       \
            --docdir=/usr/share/doc/procps-ng-3.3.9 \
            --disable-static                        \
            --disable-kill

make
make install

mv -v /usr/bin/pidof /bin
mv -v /usr/lib/libprocps.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libprocps.so) /usr/lib/libprocps.so

pkg savelog procps-ng
