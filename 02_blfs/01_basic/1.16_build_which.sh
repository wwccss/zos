cd /sources/blfs
tar xvf which*.tar.gz
cd which*

pkg watch /mnt/lfs

./configure --prefix=/usr &&
make
make install

pkg savelog which
