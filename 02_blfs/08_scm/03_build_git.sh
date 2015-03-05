cd /sources/blfs
tar xvf git*.tar.xz
cd git*

pkg watch /mnt/lfs

./configure --prefix=/usr         \
  --with-gitconfig=/etc/gitconfig  \
  --without-python
make
make install

pkg savelog git
