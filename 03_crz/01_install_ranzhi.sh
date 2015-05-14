# install ranzhi manual and then run this script to get files installed.
find /srv/ranzhi -type f > ranzhi.log
echo "/etc/httpd/sites/02.ranzhi.conf" >> ranzhi.log
find /srv/mysql/ranzhi -type f > ranzhidb.log
mv -v ranzhi.log ../pkg/log/
mv -v ranzhidb.log ../pkg/log/
