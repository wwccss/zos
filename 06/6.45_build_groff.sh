cd /sources/
tar xvf groff*.gz
cd groff*

# set page size to A4 default.
PAGE=A4 ./configure --prefix=/usr

make

mkdir -p /usr/share/doc/groff-1.22/pdf
make install

ln -sv eqn /usr/bin/geqn
ln -sv tbl /usr/bin/gtbl
