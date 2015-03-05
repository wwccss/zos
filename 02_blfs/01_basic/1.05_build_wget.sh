cd /sources/blfs
tar xvf wget*.tar.xz
cd wget*

pkg watch /mnt/lfs

./configure --prefix=/usr      \
            --sysconfdir=/etc  \
            --with-ssl=openssl &&
make 
make install

echo ca-directory=/etc/ssl/certs >> /etc/wgetrc

pkg savelog wget
