cd /sources/blfs
tar xvf lrzsz*.tar.gz
cd lrzsz*

pkg watch /mnt/lfs

./configure --prefix=/usr
make 
make install
ln -s /usr/bin/lrz /usr/bin/rz
ln -s /usr/bin/lsz /usr/bin/sz

pkg savelog lrzsz
