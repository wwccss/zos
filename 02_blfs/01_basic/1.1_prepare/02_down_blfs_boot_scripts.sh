sudo mkdir $LFS/sources/blfs
sudo chown lfs:lfs $LFS/sources/blfs
cd $LFS/sources/blfs
axel http://www.linuxfromscratch.org/blfs/downloads/svn/blfs-bootscripts-20130611.tar.bz2
tar xvf blfs-bootscripts*.tar.bz2
