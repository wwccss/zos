cd /sources/
tar jxvf sysvinit*bz2
cd sysvinit*

sed -i 's@Sending processes@& configured via /etc/inittab@g' src/init.c
sed -i -e '/utmpdump/d' \
       -e '/mountpoint/d' src/Makefile

make -C src
make -C src install
