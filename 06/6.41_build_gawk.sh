cd /sources/
tar xvf gawk*.xz
cd gawk*

./configure --prefix=/usr --libexecdir=/usr/lib
make
make check
make install

mkdir -v /usr/share/doc/gawk-4.0.2
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-4.0.2
