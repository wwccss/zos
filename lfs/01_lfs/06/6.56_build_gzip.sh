cd /sources/
tar xvf gzip*.xz
cd gzip*

pkg watch /mnt/lfs

./configure --prefix=/usr --bindir=/bin
make
make install

mv -v /bin/{gzexe,uncompress,zcmp,zdiff,zegrep} /usr/bin
mv -v /bin/{zfgrep,zforce,zgrep,zless,zmore,znew} /usr/bin

pkg savelog gzip
