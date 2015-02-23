cd /sources/
tar zxvf  file*.gz
cd file*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make install

pkg savelog file 
