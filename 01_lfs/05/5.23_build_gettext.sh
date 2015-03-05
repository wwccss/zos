cd $LFS/sources
tar xvf gettext*.xz
cd gettext*

cd gettext-tools
EMACS="no" ./configure --prefix=/tools --disable-shared

make -C gnulib-lib
make -C src msgfmt
make -C src msgmerge
make -C src xgettext

cp -v src/{msgfmt,msgmerge,xgettext} /tools/bin
