cd /sources/blfs
tar xvf ctags*.tar.gz
cd ctags*
./configure --prefix=/usr
make
sudo make install
