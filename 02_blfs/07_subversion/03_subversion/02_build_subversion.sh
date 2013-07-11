cd /sources/blfs
#tar xvf subversion*tar.bz2
cd subversion*

./configure --prefix=/usr/ \
	--disable-static \
	--with-apxs=/usr/bin/apxs \
	--with-apache-libexecdir=/usr/lib/httpd/modules/ \
	--with-neon=/usr/bin/neon-config \
	--with-apr=/usr/bin/apr-1-config \
	--with-apr-util=/usr/bin/apu-1-config \
	--with-sqlite=/usr \
	--with-berkeley-db=db.h:/usr/include/:/usr/lib/:db-6.0 \
	--with-sasl=/usr \
	--with-openssl=/usr \
	--with-zlib=/usr 
make


sudo make install &&
sudo install -v -m755 -d /usr/share/doc/subversion-1.8.0 &&
sudo cp      -v -R       doc/* \
                    /usr/share/doc/subversion-1.8.0
