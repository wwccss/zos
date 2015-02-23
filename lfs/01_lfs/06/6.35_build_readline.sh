cd /sources/
tar xvf readline*.gz
cd readline*

pkg watch /mnt/lfs

patch -Np1 -i ../readline-6.3-upstream_fixes-2.patch
sed -i '/MV.*old/d' Makefile.in
sed -i '/{OLDSUFF}/c:' support/shlib-install

./configure --prefix=/usr --docdir=/usr/share/doc/readline-6.3  
make SHLIB_LIBS=-lncurses

make SHLIB_LIBS=-lncurses install
mv -v /usr/lib/lib{readline,history}.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libreadline.so) /usr/lib/libreadline.so
ln -sfv ../../lib/$(readlink /usr/lib/libhistory.so ) /usr/lib/libhistory.so

pkg savelog readline
