cd /sources/blfs
tar xvf freetype*.tar.bz2
cd freetype*

sed -i  -e "/AUX.*.gxvalid/s@^# @@" \
        -e "/AUX.*.otvalid/s@^# @@" \
        modules.cfg                         &&

sed -ri -e 's:.*(#.*SUBPIXEL.*) .*:\1:' \
        include/freetype/config/ftoption.h  &&

./configure --prefix=/usr --disable-static  &&
make

sudo make install &&
sudo install -v -m755 -d /usr/share/doc/freetype-2.5.0.1 &&
sudo cp -v -R docs/*     /usr/share/doc/freetype-2.5.0.1
