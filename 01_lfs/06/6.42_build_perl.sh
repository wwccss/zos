cd /sources/
tar jxvf perl*.bz2
cd perl*

pkg watch /mnt/lfs

export BUILD_ZLIB=False
export BUILD_BZIP2=0

sh Configure -des -Dprefix=/usr                 \
                  -Dvendorprefix=/usr           \
                  -Dman1dir=/usr/share/man/man1 \
                  -Dman3dir=/usr/share/man/man3 \
                  -Dpager="/usr/bin/less -isR"  \
                  -Duseshrplib 

make

make install
unset BUILD_ZLIB BUILD_BZIP2

pkg savelog perl
