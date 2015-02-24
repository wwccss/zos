cd /sources/
tar xvf tar*.xz
cd tar*

pkg watch /mnt/lfs

FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin
make
make install

pkg savelog tar
