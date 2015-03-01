cd /sources/blfs
tar xvf nasm*.tar.xz
cd nasm*

pkg watch /mnt/lfs

./configure --prefix=/usr &&
make
make install

pkg savelog nasm
