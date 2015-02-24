cd /sources/
tar xvf util-linux*.tar.xz
cd util*

pkg watch /mnt/lfs

mkdir -pv /var/lib/hwclock

./configure ADJTIME_PATH=/var/lib/hwclock/adjtime \
              --docdir=/usr/share/doc/util-linx-2.25.1
make
make install

pkg savelog util-linux
