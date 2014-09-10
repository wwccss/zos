sudo wget -c http://www.linuxfromscratch.org/lfs/view/7.6-rc1/wget-list
sudo wget -c -i wget-list -P $LFS/sources
sudo rm -f wget-list
