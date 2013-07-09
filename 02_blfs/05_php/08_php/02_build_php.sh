cd /sources/blfs
tar xvf php*.tar.bz2
cd php*

./configure --prefix=/usr \
            --sysconfdir=/etc \
            --with-apxs2 \
            --with-config-file-path=/etc \
            --disable-ipv6 \
            --with-openssl \
            --with-pcre-regex=/usr \
            --with-zlib \
            --enable-bcmath \
            --with-bz2 \
            --with-curl \
            --with-openssl-dir=/usr \
            --with-zlib-dir=/usr \
            --with-ldap \
            --with-ldap-sasl \
            --enable-mbstring \
            --with-mysql \
            --with-mysql-sock=/var/run/mysqld/mysqld.sock \
            --with-pdo-mysql \
            --without-pdo-sqlite \
            --with-readline \
            --enable-sockets \
            --with-tidy \
            --with-iconv \
	    --with-mhash \
            --with-mcrypt \
	    --disable-cgi
make
