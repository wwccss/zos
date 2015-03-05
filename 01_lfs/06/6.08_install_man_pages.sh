cd /sources/
tar xvf man-pages*.xz
cd man-pages*
pkg watch /mnt/lfs
make install
pkg savelog man-pages
