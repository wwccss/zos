cd /sources/blfs
tar xvf httpd*.tar.bz2
cd httpd*

pkg watch /mnt/lfs

groupadd -g 26 apache &&
useradd -c "Apache Server" -d /srv/www -g apache \
        -s /bin/false -u 26 apache

patch -Np1 -i ../httpd-2.4.10-blfs_layout-1.patch &&
sed '/dir.*CFG_PREFIX/s@^@#@' -i support/apxs.in &&
./configure --enable-authnz-fcgi                            \
            --enable-layout=BLFS                            \
            --enable-mods-shared="all cgi"                  \
            --enable-mpms-shared=all                        \
            --enable-suexec=shared                          \
            --with-apr=/usr/bin/apr-1-config                \
            --with-apr-util=/usr/bin/apu-1-config           \
            --with-suexec-bin=/usr/lib/httpd/suexec         \
            --with-suexec-caller=apache                     \
            --with-suexec-docroot=/srv/www                  \
            --with-suexec-logfile=/var/log/httpd/suexec.log \
            --with-suexec-uidmin=100                        \
            --with-suexec-userdir=public_html               &&
make install                                 &&

mv -v /usr/sbin/suexec /usr/lib/httpd/suexec &&
chgrp apache           /usr/lib/httpd/suexec &&
chmod 4754             /usr/lib/httpd/suexec &&

chown -v -R apache:apache /srv/www

cd ../blfs-bootscripts*
make install-httpd

cd -
pkg savelog apache2
