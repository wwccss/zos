cd /sources/blfs
#tar xvf php*.tar.bz2
cd php*

#./configure --prefix=/usr \
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
	    --disable-cgi \
            --with-gd \
            --with-jpeg-dir=/usr/ \
            --with-png-dir=/usr/ \
            --with-zlib-dir=/usr/ \
            --with-freetype-dir=/usr/ \
            --enable-gd-native-ttf \
            --enable-gd-jis-conv 
#make

sudo make install &&
sudo install -v -m644 php.ini-production /etc/php.ini &&

sudo install -v -m755 -d /usr/share/doc/php-5.4.11 &&
sudo install -v -m644    CODING_STANDARDS EXTENSIONS INSTALL NEWS \
                    README* UPGRADING* php.gif \
                    /usr/share/doc/php-5.4.11 &&
sudo ln -v -sfn          /usr/lib/php/doc/Archive_Tar/docs/Archive_Tar.txt \
                    /usr/share/doc/php-5.4.11 &&
sudo ln -v -sfn          /usr/lib/php/doc/Structures_Graph/docs \
                    /usr/share/doc/php-5.4.11
