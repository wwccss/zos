cd /sources/blfs
tar xvf mysql*.tar.gz
cd mysql*

sudo groupadd -g 40 mysql &&
sudo useradd -c "MySQL Server" -d /srv/mysql -g mysql -s /bin/false -u 40 mysql

patch -Np1 -i ../mysql-5.6.11-embedded_library_shared-1.patch

sed -i "/ADD_SUBDIRECTORY(sql\/share)/d" CMakeLists.txt &&
sed -i "s/ADD_SUBDIRECTORY(libmysql)/&\\nADD_SUBDIRECTORY(sql\/share)/" CMakeLists.txt &&
sed -i "s@data/test@\${INSTALL_MYSQLSHAREDIR}@g" sql/CMakeLists.txt &&
sed -i "s@data/mysql@\${INSTALL_MYSQLTESTDIR}@g" sql/CMakeLists.txt &&
mkdir build &&
cd build &&
cmake -DCMAKE_BUILD_TYPE=Release                    \
      -DCMAKE_INSTALL_PREFIX=/usr                   \
      -DINSTALL_DOCDIR=share/doc/mysql              \
      -DINSTALL_DOCREADMEDIR=share/doc/mysql        \
      -DINSTALL_INCLUDEDIR=include/mysql            \
      -DINSTALL_INFODIR=share/info                  \
      -DINSTALL_MANDIR=share/man                    \
      -DINSTALL_MYSQLDATADIR=/srv/mysql             \
      -DINSTALL_MYSQLSHAREDIR=share/mysql           \
      -DINSTALL_MYSQLTESTDIR=share/mysql/test       \
      -DINSTALL_PLUGINDIR=lib/mysql/plugin          \
      -DINSTALL_SBINDIR=sbin                        \
      -DINSTALL_SCRIPTDIR=bin                       \
      -DINSTALL_SQLBENCHDIR=share/mysql/bench       \
      -DINSTALL_SUPPORTFILESDIR=share/mysql         \
      -DMYSQL_DATADIR=/srv/mysql                    \
      -DMYSQL_UNIX_ADDR=/run/mysqld/mysqld.sock     \
      -DSYSCONFDIR=/etc/mysql                       \
      -DWITH_PARTITION_STORAGE_ENGINE=OFF           \
      -DWITH_PERFSCHEMA_STORAGE_ENGINE=OFF          \
      -DWITH_EXTRA_CHARSETS=complex                 \
      -DWITH_LIBEVENT=system                        \
      -DWITH_SSL=system                             \
      .. &&
make

make test

sudo make install
