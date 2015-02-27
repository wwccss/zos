cd /sources/blfs
tar xvf sudo*.tar.gz
cd sudo*

pkg watch /mnt/lfs

./configure --prefix=/usr              \
            --libexecdir=/usr/lib      \
            --with-all-insults         \
            --with-env-editor          \
            --docdir=/usr/share/doc/sudo-1.8.10p3 \
            --with-passprompt="[sudo] password for %p" &&


make
make install

echo "%sudo ALL=NOPASSWD: ALL" > /etc/sudoers

pkg savelog sudo
