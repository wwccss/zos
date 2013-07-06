sudo ln -s ~/lfs/lfs $LFS/cmd
sudo mkdir -v $LFS/{dev,proc,sys}   
sudo mknod -m 600 $LFS/dev/console c 5 1
sudo mknod -m 666 $LFS/dev/null c 1 3
sudo mount -v --bind /dev $LFS/dev
sudo mount -vt devpts devpts $LFS/dev/pts
sudo mount -vt proc proc $LFS/proc
sudo mount -vt sysfs sysfs $LFS/sys

if [ -h $LFS/dev/shm ]; then
  link=$(readlink $LFS/dev/shm)
  sudo mkdir -p $LFS/$link
  sudo mount -vt tmpfs shm $LFS/$link
  unset link
else
  sudo mount -vt tmpfs shm $LFS/dev/shm
fi
