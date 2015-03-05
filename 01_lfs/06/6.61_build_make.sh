cd /sources/
tar jxvf make*.bz2
cd make*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make install

pkg savelog make
