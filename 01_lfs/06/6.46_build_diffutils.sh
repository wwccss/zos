cd /sources/
tar xvf diffutils*.xz
cd diffutils*

pkg watch /mnt/lfs

sed -i 's:= @mkdir_p@:= /bin/mkdir -p:' po/Makefile.in.in
./configure --prefix=/usr
make
make install

pkg savelog diffutils
