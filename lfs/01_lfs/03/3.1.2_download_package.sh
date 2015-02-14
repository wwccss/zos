sudo wget -c http://www.linuxfromscratch.org/lfs/view/stable/wget-list
sudo wget -c -i wget-list -P $LFS/sources
sudo rm -f wget-list
