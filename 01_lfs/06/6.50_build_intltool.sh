cd /sources/
tar xvf intltool*.gz
cd intltool*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make install

pkg savelog intltool
