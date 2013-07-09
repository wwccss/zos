cd /sources/blfs
tar xvf libjpeg*.tar.gz
cd libjpeg*

./configure --prefix=/usr \
            --mandir=/usr/share/man \
            --with-jpeg8 \
            --disable-static &&
make

docsdir=/usr/share/doc/libjpeg-turbo-1.3.0 &&
sudo make docdir=$docsdir exampledir=$docsdir install &&
unset docsdir
