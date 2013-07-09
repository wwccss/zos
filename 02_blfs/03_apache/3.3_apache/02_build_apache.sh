cd /sources/blfs
tar xvf httpd*.tar.bz2
cd httpd*

sudo groupadd -g 25 apache &&
sudo useradd -c "Apache Server" -d /srv/www -g apache \
        -s /bin/false -u 25 apache

patch -Np1 -i ../httpd-2.4.4-blfs_layout-1.patch &&
./configure --enable-layout=BLFS \
            --enable-mods-shared="all cgi" \
            --enable-mpms-shared=all \
            --with-apr=/usr/bin/apr-1-config \
            --with-apr-util=/usr/bin/apu-1-config \
            --enable-suexec=shared \
            --with-suexec-bin=/usr/lib/httpd/suexec \
            --with-suexec-docroot=/srv/www \
            --with-suexec-caller=apache \
            --with-suexec-userdir=public_html \
            --with-suexec-logfile=/var/log/httpd/suexec.log \
            --with-suexec-uidmin=100 &&
make

sudo make install &&

sudo mv -v /usr/sbin/suexec /usr/lib/httpd/suexec &&
sudo chgrp apache /usr/lib/httpd/suexec &&
sudo chmod 4754 /usr/lib/httpd/suexec &&

sudo chown -v -R apache:apache /srv/www

cd ../blfs-bootscripts*
sudo make install-httpd
