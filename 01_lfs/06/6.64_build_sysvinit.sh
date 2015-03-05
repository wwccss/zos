cd /sources/
tar xvf sysvinit*bz2
cd sysvinit*

pkg watch /mnt/lfs

patch -Np1 -i ../sysvinit-2.88dsf-consolidated-1.patch

make -C src
make -C src install

pkg savelog sysvinit
