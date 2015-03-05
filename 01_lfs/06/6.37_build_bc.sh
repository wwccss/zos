cd /sources/
tar xvf bc*.bz2 
cd bc*

pkg watch /mnt/lfs

patch -Np1 -i ../bc-1.06.95-memory_leak-1.patch

./configure --prefix=/usr           \
            --with-readline         \
            --mandir=/usr/share/man \
            --infodir=/usr/share/info

make
make install

pkg savelog bc
