cd /sources/blfs
tar xvf cyrus-sasl*.tar.gz
cd cyrus*

patch -Np1 -i ../cyrus-sasl-2.1.26-fixes-1.patch &&
autoreconf -fi &&
pushd saslauthd
autoreconf -fi &&
popd
./configure --prefix=/usr \
            --sysconfdir=/etc \
            --with-dbpath=/var/lib/sasl/sasldb2 \
            --with-saslauthd=/var/run/saslauthd \
            --enable-auth-sasldb &&
make

sudo make install &&
sudo install -v -dm755 /usr/share/doc/cyrus-sasl-2.1.26 &&
sudo install -v -m644  doc/{*.{html,txt,fig},ONEWS,TODO} \
    saslauthd/LDAP_SASLAUTHD /usr/share/doc/cyrus-sasl-2.1.26 &&
sudo install -v -dm700 /var/lib/sasl
