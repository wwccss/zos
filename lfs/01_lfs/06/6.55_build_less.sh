cd /sources/
tar xvf less*.gz
cd less*

pkg watch /mnt/lfs

./configure --prefix=/usr --sysconfdir=/etc

make
make install

pkg savelog less
