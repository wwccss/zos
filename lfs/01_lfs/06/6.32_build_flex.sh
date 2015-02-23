cd /sources/
tar jxvf flex*.bz2
cd flex*

pkg watch /mnt/lfs

./configure --prefix=/usr --docdir=/usr/share/doc/flex-2.5.39
make

make install
ln -sv flex /usr/bin/lex

pkg savelog flex
