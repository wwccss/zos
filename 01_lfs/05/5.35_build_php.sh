cd $LFS/sources
wget -c http://cn2.php.net/distributions/php-5.4.38.tar.bz2
tar xvf php*.tar.bz2
cd php*

./configure --prefix=/tools/ --disable-all --without-pear
make
make install
