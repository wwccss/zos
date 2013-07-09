cd /sources/blfs
tar xvf sudo*.tar.gz
cd sudo*

./configure --prefix=/usr                      \
            --libexecdir=/usr/lib/sudo         \
            --docdir=/usr/share/doc/sudo-1.8.7 \
            --with-timedir=/var/lib/sudo       \
            --with-all-insults                 \
            --with-env-editor                  &&
make
make install

echo "%sudo ALL=NOPASSWD: ALL" > /etc/sudoers
