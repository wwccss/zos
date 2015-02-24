cd /sources/
tar xvf lfs-bootscripts*bz2 
cd lfs-bootscripts*

pkg watch /mnt/lfs
make install
pkg savelog lfs-bootscripts
