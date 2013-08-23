cd /sources/blfs
tar xvf tidy*.tar.bz2
cd tidy*

./configure --prefix=/usr --disable-static &&
make

sudo make install &&

sudo install -v -m644 -D htmldoc/tidy.1 \
                    /usr/share/man/man1/tidy.1 &&
sudo install -v -m755 -d /usr/share/doc/tidy-cvs_20101110 &&
sudo install -v -m644    htmldoc/*.{html,gif,css} \
                    /usr/share/doc/tidy-cvs_20101110
