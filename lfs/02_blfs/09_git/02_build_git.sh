cd /sources/blfs
tar xvf git*.tar.gz
cd git*

./configure --prefix=/usr \
            --libexecdir=/usr/lib \
            --without-python \
            --with-libpcre \
            --with-gitconfig=/etc/gitconfig &&
make

sudo make install
