cd /sources/blfs
tar xvf expat*.tar.gz
cd expat*

./configure --prefix=/usr --disable-static &&
make

sudo make install &&
sudo install -v -m755 -d /usr/share/doc/expat-2.1.0 &&
sudo install -v -m644 doc/*.{html,png,css} /usr/share/doc/expat-2.1.0
