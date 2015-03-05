cd /sources/
tar xvf texinfo*.xz
cd texinfo*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make install

pkg savelog texinfo
