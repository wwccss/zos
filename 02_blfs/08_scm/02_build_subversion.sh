cd /sources/blfs
#tar xvf subversion*tar.bz2
cd subversion*

pkg watch /mnt/lfs

#./configure --prefix=/usr/ \
#	--disable-static \
#	--with-apxs=/usr/bin/apxs \
#	--with-apache-libexecdir=/usr/lib/httpd/modules/ \
#	--with-apr=/usr/bin/apr-1-config \
#	--with-apr-util=/usr/bin/apu-1-config \
#	--with-sqlite=/usr \
#	--with-sasl=/usr \
#	--with-openssl=/usr \
#        --with-serf=/usr \
#	--with-zlib=/usr 
#make
#make install

# modules for apache.
cat > /etc/httpd/extra/svn.conf <<EOT
# subversion module.
LoadModule dav_module /usr/lib/httpd/modules/mod_dav.so
LoadModule dav_fs_module /usr/lib/httpd/modules/mod_dav_fs.so
LoadModule dav_svn_module /usr/lib/httpd/modules/mod_dav_svn.so
LoadModule authz_svn_module /usr/lib/httpd/modules/mod_authz_svn.so
EOT

cat > /etc/httpd/sites/30.phpmyadmin.conf <<EOT
<Location /svn>
  AuthType Basic
  AuthName "Subversion(run /srv/auth/svn/adduser.sh to add user)"
  AuthUserFile /srv/auth/svn/users
  AuthzSVNAccessFile /srv/auth/svn/authz
  Require valid-user

  DAV svn
  SVNParentPath /srv/scm/svn/repo
  SVNListParentPath on
</Location>
EOT

mkdir -p /srv/auth/svn
touch /srv/auth/svn/users

cat > /srv/auth/svn/authz <<EOT
[/]
*=
[groups]
EOT

cat > /srv/auth/svn/adduser.sh <<EOT
echo "This tool is used to add user for subversion";
read -p "Account: " account
read -s -p "Password: " password
htpasswd -b users 
EOT

pkg savelog subversion
