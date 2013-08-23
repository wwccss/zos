cd /sources/blfs
tar xvf mhash*.tar.bz2
cd mhash*

./configure --prefix=/usr
make 
sudo make install

