cd /sources/blfs
tar xvf libjpeg*.tar.gz
cd libjpeg*

pkg watch /mnt/lfs

sed -i -e '/^docdir/     s:$:/libjpeg-turbo-1.3.1:' \
       -e '/^exampledir/ s:$:/libjpeg-turbo-1.3.1:' Makefile.in &&

./configure --prefix=/usr           \
            --mandir=/usr/share/man \
            --with-jpeg8            \
            --disable-static &&
make
make install

pkg savelog libjpeg-turbo
