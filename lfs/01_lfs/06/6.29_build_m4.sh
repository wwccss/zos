cd /sources/
tar jxvf m4*.bz2
cd m4*

sed -i -e '/gets is a/d' lib/stdio.in.h
./configure --prefix=/usr
make

sed -i -e '41s/ENOENT/& || errno == EINVAL/' tests/test-readlink.h
make check

make install
