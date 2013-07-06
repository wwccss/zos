cd /sources/
tar xvf bash*.gz
cd bash*

patch -Np1 -i ../bash-4.2-fixes-11.patch

./configure --prefix=/usr                     \
            --bindir=/bin                     \
            --htmldir=/usr/share/doc/bash-4.2 \
            --without-bash-malloc             \
            --with-installed-readline
make
chown -Rv nobody .
su nobody -s /bin/bash -c "PATH=$PATH make tests"
make install
exec /bin/bash --login +h
