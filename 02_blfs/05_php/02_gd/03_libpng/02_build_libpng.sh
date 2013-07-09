cd /sources/blfs
tar xvf libpng*.tar.xz
cd libpng*

gzip -cd ../libpng-1.6.2-apng.patch.gz | patch -p1
./configure --prefix=/usr --disable-static &&
make

sudo make install &&
sudo mkdir -v /usr/share/doc/libpng-1.6.2 &&
sudo cp -v README libpng-manual.txt /usr/share/doc/libpng-1.6.2
