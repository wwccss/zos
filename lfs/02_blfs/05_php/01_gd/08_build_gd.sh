cd /sources/blfs
tar xvf libgd*.tar.gz
cd libgd*

./configure --prefix=/usr/ --with-png=/usr/ --with-freetype=/usr/ --with-fontconfig=/usr --with-jpeg=/usr --with-tiff=/usr
make
make install

pkg savelog libgd
