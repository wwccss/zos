sudo rm -frv /tmp/minify/home/z/.*
sudo rm -frv /tmp/minify/home/z/*
sudo rm -frv /tmp/minify/root/.*
sudo rm -frv /tmp/minify/root/*

sudo rm -frv /tmp/minify/root
sudo mkdir -v /tmp/minify/root
sudo chown root:root /tmp/minify/root
sudo chmod 750 /tmp/minify/root

sudo rm -frv /tmp/minify/srv/mysql/ib_logfile0
sudo rm -frv /tmp/minify/srv/mysql/ib_logfile1
sudo rm -frv /tmp/minify/srv/mysql/debian.err

sudo  rm -fr /tmp/minify/var/log
sudo  mkdir -v /tmp/minify/var/log/httpd -p

sudo rm -frv /tmp/minify/sources
sudo rm -frv /tmp/minify/tools

sudo rm -frv /tmp/minify/srv/auth/users
sudo touch /tmp/minify/srv/auth/users
