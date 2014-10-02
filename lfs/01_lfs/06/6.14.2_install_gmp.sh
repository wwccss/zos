cd /sources/gmp*

pkg watch /mnt/lfs

make install
make install-html

pkg build /sources/ini/gmp.ini winst.log /
