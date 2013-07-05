cd /sources/
tar jxvf make*.bz2
cd make*

patch -Np1 -i ../make-3.82-upstream_fixes-3.patch

./configure --prefix=/usr
make
make check
make install
