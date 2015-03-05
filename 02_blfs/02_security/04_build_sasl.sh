cd /sources/blfs
tar xvf cyrus-sasl*.tar.gz
cd cyrus*

pkg watch /mnt/lfs

patch -Np1 -i ../cyrus-sasl-2.1.26-fixes-3.patch &&
autoreconf -fi &&
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --enable-auth-sasldb \
            --with-dbpath=/var/lib/sasl/sasldb2 \
            --with-saslauthd=/var/run/saslauthd &&
make
make install 
install -v -dm700 /var/lib/sasl

pkg savelog cyrus-sasl
