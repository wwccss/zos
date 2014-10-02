cd /sources/
tar zxvf  file*.gz
cd file*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make check
make install

pkg build /sources/ini/file.ini winst.log /
