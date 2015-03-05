# install chanzhi manual and then run this script to get files installed.
find /srv/chanzhi -type f > chanzhi.log
find /srv/mysql/chanzhi -type f >> chanzhi.log
echo "/etc/httpd/sites/02.chanzhi.conf" >> chanzhi.log
mv -v chanzhi.log ../pkg/log
