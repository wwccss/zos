cd /sources/blfs
tar xvf lrzsz*.tar.gz
cd lrzsz*

./configure --prefix=/usr
make 
sudo make install
sudo ln -s /usr/bin/lrz /usr/bin/rz
sudo ln -s /usr/bin/lsz /usr/bin/sz
