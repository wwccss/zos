cd /sources/blfs
tar xvf openldap*.tgz
cd openldap*

pkg watch /mnt/lfs

patch -Np1 -i ../openldap-2.4.39-blfs_paths-1.patch &&
patch -Np1 -i ../openldap-2.4.39-symbol_versions-1.patch &&
autoconf &&
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --enable-dynamic  \
            --disable-debug   \
            --disable-slapd &&
make depend &&
make
make install

pkg savelog openldap
