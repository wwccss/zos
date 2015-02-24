cd /sources/
tar xvf gperf*.gz
cd gperf*

pkg watch /mnt/lfs

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.0.4
make
make install

pkg savelog gperf
