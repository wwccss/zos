cd /sources/
tar xvf iana-etc*.bz2
cd iana*

pkg watch /mnt/lfs

make
make install

pkg savelog iana-etc
