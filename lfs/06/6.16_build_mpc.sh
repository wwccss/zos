cd /sources/
tar xvf mpc*.tar.gz
cd mpc*

./configure  --prefix=/usr

make
make check
make install
