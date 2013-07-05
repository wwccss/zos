cd /sources/
tar xvf util-linux*.tar.xz
cd util*

sed -i -e 's@etc/adjtime@var/lib/hwclock/adjtime@g' \
     $(grep -rl '/etc/adjtime' .)

mkdir -pv /var/lib/hwclock

./configure --disable-su --disable-sulogin --disable-login
make
make install
