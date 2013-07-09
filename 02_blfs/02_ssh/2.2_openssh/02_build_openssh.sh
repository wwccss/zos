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
