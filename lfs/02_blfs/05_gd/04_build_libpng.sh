cd /sources/blfs
tar xvf libpng*.tar.xz
cd libpng*

pkg watch /mnt/lfs

gzip -cd ../libpng-1.6.13-apng.patch.gz | patch -p1
./configure --prefix=/usr --disable-static &&
make
make install

pkg savelog libpng
