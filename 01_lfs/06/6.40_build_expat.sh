cd /sources/
tar xvf expat*.gz
cd expat*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make install

pkg savelog expat
