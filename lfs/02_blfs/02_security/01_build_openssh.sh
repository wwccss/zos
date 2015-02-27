cd /sources/blfs
tar xvf openssh*.tar.gz
cd openssh*

pkg watch /mnt/lfs

install -v -m700 -d /var/lib/sshd &&
chown   -v root:sys /var/lib/sshd &&

groupadd -g 50 sshd &&
useradd -c 'sshd PrivSep' -d /var/lib/sshd -g sshd -s /bin/false -u 50 sshd

./configure --prefix=/usr                     \
            --sysconfdir=/etc/ssh             \
            --with-md5-passwords              \
            --with-privsep-path=/var/lib/sshd &&
make 

make install                                  &&
install -v -m755 contrib/ssh-copy-id /usr/bin &&
install -v -m644 contrib/ssh-copy-id.1 /usr/share/man/man1

echo "PermitRootLogin no" >> /etc/ssh/sshd_config

cd ../blfs-bootscripts* && make install-sshd
cd -

pkg savelog openssh
