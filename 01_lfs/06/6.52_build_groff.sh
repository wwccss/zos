cd /sources/
tar xvf groff*.gz
cd groff*

pkg watch /mnt/lfs

# set page size to A4 default.
PAGE=A4 ./configure --prefix=/usr

make
make install

pkg savelog groff
