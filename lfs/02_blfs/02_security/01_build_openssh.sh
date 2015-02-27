cd /sources/blfs
tar xvf openssh*.tar.gz
cd openssh*

install -v -m700 -d /var/lib/sshd &&
chown -v root:sys /var/lib/sshd &&
groupadd -g 50 sshd &&
useradd -c 'sshd PrivSep' -d /var/lib/sshd -g sshd \
    -s /bin/false -u 50 sshd

./configure --prefix=/usr                     \
            --libexecdir=/usr/lib/openssh     \
            --sysconfdir=/etc/ssh             \
            --datadir=/usr/share/sshd         \
            --with-md5-passwords              \
            --with-privsep-path=/var/lib/sshd &&
make
make tests
cd /sources/blfs/openssh*

make install &&
install -v -m755 contrib/ssh-copy-id /usr/bin &&
install -v -m644 contrib/ssh-copy-id.1 /usr/share/man/man1 &&
install -v -m755 -d /usr/share/doc/openssh-6.2p2 &&
install -v -m644 INSTALL LICENCE OVERVIEW README* \
    /usr/share/doc/openssh-6.2p2

echo "PermitRootLogin no" >> /etc/ssh/sshd_config

cd ../blfs-bootscripts*
make install-sshd
