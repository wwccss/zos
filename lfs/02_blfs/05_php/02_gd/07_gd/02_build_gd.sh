cd /sources/blfs
tar xvf libgd*.tar.gz
cd libgd*
#tar xvf gd*.tar.gz
#cd gd*

./configure --prefix=/usr/ --with-png=/usr/ --with-freetype=/usr/ --with-fontconfig=/usr --with-jpeg=/usr
make

sudo make install
