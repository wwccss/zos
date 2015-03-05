cd /sources/
tar xvf gawk*.xz
cd gawk*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make install

pkg savelog gawk
