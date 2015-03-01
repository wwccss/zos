cd /sources/blfs
tar xvf freetype*.tar.bz2
cd freetype*

pkg watch /mnt/lfs

sed -i  -e "/AUX.*.gxvalid/s@^# @@" \
        -e "/AUX.*.otvalid/s@^# @@" \
        modules.cfg                        &&

sed -ri -e 's:.*(#.*SUBPIXEL.*) .*:\1:' \
        include/config/ftoption.h          &&

./configure --prefix=/usr --disable-static &&
make
make install

pkg savelog freetype
