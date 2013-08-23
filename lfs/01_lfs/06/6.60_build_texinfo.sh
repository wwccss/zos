cd /sources/
tar xvf texinfo*.xz
cd texinfo*

./configure --prefix=/usr
make
make check
make install
make TEXMF=/usr/share/texmf install-tex

cd /usr/share/info
rm -v dir
for f in *
do install-info $f dir 2>/dev/null
done
