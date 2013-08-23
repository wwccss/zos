cd /sources/
tar xvf kbd*.gz
cd kbd*

patch -Np1 -i ../kbd-1.15.5-backspace-1.patch
sed -i -e '326 s/if/while/' src/loadkeys.analyze.l
sed -i 's/\(RESIZECONS_PROGS=\)yes/\1no/g' configure
sed -i 's/resizecons.8 //' man/man8/Makefile.in

./configure --prefix=/usr --datadir=/lib/kbd \
  --disable-vlock
make
make install

mv -v /usr/bin/{kbd_mode,loadkeys,openvt,setfont} /bin
mkdir -v /usr/share/doc/kbd-1.15.5
cp -R -v doc/* \
         /usr/share/doc/kbd-1.15.5

