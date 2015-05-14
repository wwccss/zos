# install zentao manual and then run this script to get files installed.
find /srv/zentao -type f > zentao.log
echo "/etc/httpd/sites/02.zentao.conf" >> zentao.log
find /srv/mysql/zentao -type f > zentaodb.log
mv -v zentao.log ../pkg/log/
mv -v zentaodb.log ../pkg/log/
