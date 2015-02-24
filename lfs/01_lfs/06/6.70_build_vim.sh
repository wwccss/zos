cd /sources/
tar xvf vim*.bz2
cd vim74

pkg watch /mnt/lfs

echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
./configure --prefix=/usr --enable-multibyte
make
make install

ln -sv vim /usr/bin/vi
ln -sv ../vim/vim74/doc /usr/share/doc/vim-7.4

cat > /etc/vimrc << "EOF"
" Begin /etc/vimrc

set nocompatible
set backspace=2
syntax on
if (&term == "iterm") || (&term == "putty")
  set background=dark
endif

" End /etc/vimrc
EOF

pkg savelog vim
