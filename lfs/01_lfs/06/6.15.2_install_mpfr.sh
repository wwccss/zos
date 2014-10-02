cd /sources/mpfr*

pkg watch /mnt/lfs

make install
make install-html

pkg build /sources/ini/mpfr.ini winst.log /
