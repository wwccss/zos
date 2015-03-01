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
sudo install -v -dm 755 /etc/mysql &&
sudo touch /etc/mysql/my.cnf
sudo chown z:z /etc/mysql/my.cnf
cat > /etc/mysql/my.cnf << "EOF"
# Begin /etc/mysql/my.cnf

# The following options will be passed to all MySQL clients
[client]
#password       = your_password
port            = 3306
socket          = /run/mysqld/mysqld.sock

# The MySQL server
[mysqld]
port            = 3306
socket          = /run/mysqld/mysqld.sock
datadir         = /srv/mysql
skip-external-locking
key_buffer = 16M
max_allowed_packet = 1M
sort_buffer_size = 512K
net_buffer_length = 16K
myisam_sort_buffer_size = 8M

# Don't listen on a TCP/IP port at all.
skip-networking

# required unique id between 1 and 2^32 - 1
server-id       = 1

# Uncomment the following if you are using BDB tables
#bdb_cache_size = 4M
#bdb_max_lock = 10000

# Uncomment the following if you are using InnoDB tables
#innodb_data_home_dir = /srv/mysql
#innodb_data_file_path = ibdata1:10M:autoextend
#innodb_log_group_home_dir = /srv/mysql
# You can set .._buffer_pool_size up to 50 - 80 %
# of RAM but beware of setting memory usage too high
#innodb_buffer_pool_size = 16M
#innodb_additional_mem_pool_size = 2M
# Set .._log_file_size to 25 % of buffer pool size
#innodb_log_file_size = 5M
#innodb_log_buffer_size = 8M
#innodb_flush_log_at_trx_commit = 1
#innodb_lock_wait_timeout = 50

[mysqldump]
quick
max_allowed_packet = 16M

[mysql]
no-auto-rehash
# Remove the next comment character if you are not familiar with SQL
#safe-updates

[isamchk]
key_buffer = 20M
sort_buffer_size = 20M
read_buffer = 2M
write_buffer = 2M

[myisamchk]
key_buffer_size = 20M
sort_buffer_size = 20M
read_buffer = 2M
write_buffer = 2M

[mysqlhotcopy]
interactive-timeout

# End /etc/mysql/my.cnf
EOF

sudo chown root:root /etc/mysql/my.cnf

sudo mysql_install_db --basedir=/usr --datadir=/srv/mysql --user=mysql &&
sudo chown -R mysql:mysql /srv/mysql

sudo install -v -m755 -o mysql -g mysql -d /var/run/mysqld &&
sudo mysqld_safe --user=mysql 2>&1 >/dev/null &

cd ../blfs-bootscripts*
sudo make install-mysql
