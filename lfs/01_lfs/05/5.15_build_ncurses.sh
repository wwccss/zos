cd $LFS/sources
tar zxvf ncurses*
cd ncurses*

./configure --prefix=/tools --with-shared \
      --without-debug --without-ada --enable-overwrite

make && make install
