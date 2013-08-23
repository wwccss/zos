cd /sources/blfs
tar xvf nasm*.tar.xz
cd nasm*

./configure --prefix=/usr &&
make

sudo make install
