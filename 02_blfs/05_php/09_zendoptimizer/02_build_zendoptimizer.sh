cd /sources/blfs
unzip zendopti*.zip
cd Zend*
phpize
./configure --with-php-config=/usr/bin/php-config
make
sudo make install

sudo chown z:z /etc/php.ini
cat >> /etc/php.ini << "EOF"
zend_extension=/usr/lib/php/extensions/no-debug-zts-20100525/opcache.so
opcache.memory_consumption=128
opcache.interned_strings_buffer=8
opcache.max_accelerated_files=4000
opcache.revalidate_freq=60
opcache.fast_shutdown=1
opcache.enable_cli=1
EOF
