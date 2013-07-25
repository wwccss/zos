cd /sources/blfs
tar xvf wget*.tar.xz
cd wget*

patch -Np1 -i ../wget-1.14-texi2pod-1.patch &&
./configure --prefix=/usr      \
            --sysconfdir=/etc  \
            --with-ssl=openssl &&
make 
make check

sudo make install
