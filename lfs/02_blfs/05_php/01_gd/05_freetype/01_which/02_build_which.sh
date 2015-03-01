cd /sources/blfs
tar xvf which*.tar.gz
cd which*

./configure --prefix=/usr &&
make

sudo make install
