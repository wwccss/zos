cd /sources/blfs
tar xvf libmcrypt*.tar.bz2
cd libmcrypt*

./configure --prefix=/usr
make
sudo make install
