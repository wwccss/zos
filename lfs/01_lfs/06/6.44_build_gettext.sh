cd /sources/
tar xvf gettext*.gz
cd gettext*

./configure --prefix=/usr \
            --docdir=/usr/share/doc/gettext-0.18.2
make
make check
make install
