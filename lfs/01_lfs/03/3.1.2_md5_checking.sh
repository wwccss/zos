sudo wget -c  -O $LFS/sources/md5sums http://www.linuxfromscratch.org/lfs/view/7.6-rc1/md5sums
pushd $LFS/sources
md5sum -c md5sums
popd
sudo rm -fr $LFS/source/md5sums
