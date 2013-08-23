sudo mkdir /usr/lib/bak
sudo mv -v /usr/lib/apr-util-1      /usr/lib/bak/
sudo mv -v /usr/lib/apr.exp         /usr/lib/bak/
sudo mv -v /usr/lib/aprutil.exp     /usr/lib/bak/
sudo mv -v /usr/lib/audit           /usr/lib/bak/
sudo mv -v /usr/lib/awk             /usr/lib/bak/
sudo mv -v /usr/lib/bak             /usr/lib/bak/
sudo mv -v /usr/lib/coreutils       /usr/lib/bak/
sudo mv -v /usr/lib/e2initrd_helper /usr/lib/bak/
sudo mv -v /usr/lib/engines         /usr/lib/bak/
sudo mv -v /usr/lib/findutils       /usr/lib/bak/
sudo mv -v /usr/lib/firmware        /usr/lib/bak/
sudo mv -v /usr/lib/gconv           /usr/lib/bak/
sudo mv -v /usr/lib/gettext         /usr/lib/bak/
sudo mv -v /usr/lib/glibc           /usr/lib/bak/
sudo mv -v /usr/lib/groff           /usr/lib/bak/
sudo mv -v /usr/lib/ldscripts       /usr/lib/bak/
sudo mv -v /usr/lib/man-db          /usr/lib/bak/
sudo mv -v /usr/lib/mysql           /usr/lib/bak/
sudo mv -v /usr/lib/openssh         /usr/lib/bak/
sudo mv -v /usr/lib/php             /usr/lib/bak/
sudo mv -v /usr/lib/pkgconfig       /usr/lib/bak/
sudo mv -v /usr/lib/sasl2           /usr/lib/bak/
sudo mv -v /usr/lib/tc              /usr/lib/bak/
sudo mv -v /usr/lib/terminfo        /usr/lib/bak/
sudo mv -v /usr/lib/xml2Conf.sh     /usr/lib/bak/
sudo mv -v /usr/lib/perl5           /usr/lib/bak/
sudo mv -v /usr/lib/git-core        /usr/lib/bak/
sudo mv -v /usr/lib/gcc             /usr/lib/bak/
sudo mv -v /usr/lib/libmcrypt       /usr/lib/bak/
sudo mv -v /usr/lib/libmysql*       /usr/lib/bak/
sudo mv -v /usr/lib/preloadable_libintl.so /usr/lib/bak/

sudo mkdir -v /usr/lib/php
sudo mv -v /usr/lib/bak/php/extensions/ /usr/lib/php
