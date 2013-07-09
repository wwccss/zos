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
