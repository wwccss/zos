cd /sources/blfs
tar xvf ioncube_loaders_lin_x86.tar.bz2  
cd ioncube*
pkg watch /mnt/lfs

cp ioncube_loader_lin_5.5.so /usr/lib/php/extensions/no-debug-non-zts-20121212/

pkg savelog ioncube
