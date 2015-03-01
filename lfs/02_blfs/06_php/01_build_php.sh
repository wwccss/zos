cd /sources/blfs
tar xvf php*.tar.bz2
cd php*

pkg watch /mnt/lfs

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
            --with-mysqli \
            --with-mysql-sock=/var/run/mysqld/mysqld.sock \
            --with-pdo-mysql \
            --with-readline \
            --enable-sockets \
            --with-iconv \
	    --disable-cgi \
            --with-gd \
            --with-jpeg-dir=/usr/ \
            --with-png-dir=/usr/ \
            --with-zlib-dir=/usr/ \
            --with-freetype-dir=/usr/ \
            --enable-gd-native-ttf \
            --enable-gd-jis-conv  \

make clean
make

make install &&
install -v -m644 php.ini-production /etc/php.ini

pkg savelog php55
