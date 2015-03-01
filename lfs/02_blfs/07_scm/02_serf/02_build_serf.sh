cd /sources/blfs
tar xvf serf*.bz2
cd serf*

./configure --prefix=/usr -disable-static &&
make
make check
sudo make install
