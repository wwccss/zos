cd /sources/
tar xvf less*.gz
cd less*

./configure --prefix=/usr --sysconfdir=/etc

make
make install
