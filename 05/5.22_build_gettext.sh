cd $LFS/sources
tar xvf gettext*.gz
cd gettext*

cd gettext-tools
EMACS="no" ./configure --prefix=/tools --disable-shared

make -C gnulib-lib
make -C src msgfmt

cp -v src/msgfmt /tools/bin
