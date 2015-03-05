# install ranzhi manual and then run this script to get files installed.
find /srv/ranzhi -type f > ranzhi.log
find /srv/mysql/ranzhi -type f >> ranzhi.log
echo "/etc/httpd/sites/02.ranzhi.conf" >> ranzhi.log
mv -v ranzhi.log ../pkg/log/
