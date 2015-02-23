cd /sources/
tar xvf gettext*.xz
cd gettext*

pkg watch /mnt/lfs

./configure --prefix=/usr \
            --docdir=/usr/share/doc/gettext-0.19.2
make
make install

pkg savelog gettext
