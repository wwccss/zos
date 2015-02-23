cd /sources/
tar xvf psmisc*.gz
cd psmisc*

pkg watch /mnt/lfs

./configure --prefix=/usr
make
make install
mv -v /usr/bin/fuser   /bin
mv -v /usr/bin/killall /bin

pkg savelog psmisc
