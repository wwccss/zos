cd /sources/blfs
tar xvf subversion*tar.bz2
cd subversion*

pkg watch /mnt/lfs

./configure --prefix=/usr/ \
	--disable-static \
	--with-apxs=/usr/bin/apxs \
	--with-apache-libexecdir=/usr/lib/httpd/modules/ \
	--with-apr=/usr/bin/apr-1-config \
	--with-apr-util=/usr/bin/apu-1-config \
	--with-sqlite=/usr \
	--with-sasl=/usr \
	--with-openssl=/usr \
        --with-serf=/usr \
	--with-zlib=/usr 
make
make install

pkg savelog subversion


