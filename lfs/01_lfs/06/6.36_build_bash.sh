cd /sources/
tar xvf bash*.gz
cd bash*

pkg watch /mnt/lfs
patch -Np1 -i ../bash-4.3-upstream_fixes-3.patch
./configure --prefix=/usr                    \
            --bindir=/bin                    \
            --docdir=/usr/share/doc/bash-4.3 \
            --without-bash-malloc            \
            --with-installed-readline

make
make install

pkg savelog bash
