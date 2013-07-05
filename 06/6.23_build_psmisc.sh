cd /sources/
tar xvf psmisc*.gz
cd psmisc*

./configure --prefix=/usr
make
make install
mv -v /usr/bin/fuser   /bin
mv -v /usr/bin/killall /bin
