sudo umount /mnt/lfs/sources/
sudo umount /mnt/lfs/tools/  
sudo umount /mnt/lfs/

sudo umount /dev/sde1
sudo mount /dev/sde1 /mnt/lfs

echo "now will enter the chroot env, after that, run grub-install /dev/sde\n\n"
bash ../01_lfs/07/7.00_chroot.sh
