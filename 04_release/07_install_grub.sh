sudo umount /dev/sdg1
sudo umount /dev/sdf1
sudo mount /dev/sdf1 /mnt/lfs
sudo mkdir /mnt/lfs/sources/
sudo mkdir /mnt/lfs/tools/
sudo mount /dev/sdc1 /mnt/lfs/tools
sudo mount /dev/sdd1 /mnt/lfs/sources

echo "now will enter the chroot env, after that, run grub-install /dev/sdf\n\n"
bash ../01_lfs/07/7.00_chroot.sh
