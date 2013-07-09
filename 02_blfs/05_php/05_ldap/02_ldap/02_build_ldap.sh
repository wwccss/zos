cd /sources/blfs
tar xvf openldap*.tgz
cd openldap*

patch -Np1 -i ../openldap-2.4.35-ntlm-1.patch
patch -Np1 -i ../openldap-2.4.35-blfs_paths-1.patch &&
patch -Np1 -i ../openldap-2.4.35-symbol_versions-1.patch &&
autoconf &&
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-dynamic  \
            --disable-debug   \
            --disable-slapd &&
make depend &&
make

sudo groupadd -g 83 ldap &&
sudo useradd -c "OpenLDAP Daemon Owner" -d /var/lib/openldap -u 83 \
        -g ldap -s /bin/false ldap

sudo make install &&
sudo chown -R ldap:ldap /var/lib/openldap &&
sudo install -v -dm755  /usr/share/doc/openldap-2.4.35 &&
sudo cp -vfr doc/drafts /usr/share/doc/openldap-2.4.35 &&
sudo cp -vfr doc/rfc    /usr/share/doc/openldap-2.4.35 &&
sudo cp -vfr doc/guide  /usr/share/doc/openldap-2.4.35
