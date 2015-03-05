cd /sources/
tar xvf findutils*.gz
cd findutils*

pkg watch /mnt/lfs

./configure --prefix=/usr --localstatedir=/var/lib/locate

make
make install

mv -v /usr/bin/find /bin
sed -i 's|find:=${BINDIR}|find:=/bin|' /usr/bin/updatedb

pkg savelog findutils
