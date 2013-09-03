sudo rm -frv /tmp/minify/home/z/.*history
sudo rm -frv /tmp/minify/home/z/.ssh
sudo rm -frv /tmp/minify/home/z/.subversion
sudo rm -frv /tmp/minify/home/z/.viminfo
sudo rm -frv /tmp/minify/home/z/cmd
sudo rm -frv /tmp/minify/home/z/.less*

sudo rm -frv /tmp/minify/root
sudo mkdir -v /tmp/minify/root
sudo chown root:root /tmp/minify/root
sudo chmod 750 /tmp/minify/root

sudo rm -frv /tmp/minify/srv/mysql/ib*

sudo  rm -fr /tmp/minify/var/log
sudo  mkdir -v /tmp/minify/var/log/httpd -p

sudo rm -frv /tmp/minify/sources
sudo rm -frv /tmp/minify/tools

sudo rm -frv /tmp/minify/srv/auth/users
sudo touch /tmp/minify/srv/auth/users
