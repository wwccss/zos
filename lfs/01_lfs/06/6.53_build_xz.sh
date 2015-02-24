cd /sources/
tar xvf xz*.xz
cd xz*

pkg watch /mnt/lfs

./configure --prefix=/usr --docdir=/usr/share/doc/xz-5.0.5
make
make install

mv -v   /usr/bin/{lzma,unlzma,lzcat,xz,unxz,xzcat} /bin
mv -v /usr/lib/liblzma.so.* /lib
ln -svf ../../lib/$(readlink /usr/lib/liblzma.so) /usr/lib/liblzma.so

pkg savelog xz
