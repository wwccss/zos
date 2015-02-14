sudo wget -c  -O $LFS/sources/md5sums http://www.linuxfromscratch.org/lfs/view/stable/md5sums
pushd $LFS/sources
md5sum -c md5sums
popd
sudo rm -fr $LFS/source/md5sums
