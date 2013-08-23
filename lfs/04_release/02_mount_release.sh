# first, umount the build host.
sudo umount /dev/sdd1
sudo umount /dev/sdc1
sudo umount /dev/sdb1

mkdir /tmp/minify
mkdir /tmp/release
sudo mount /dev/sde1 /tmp/minify
sudo mount /dev/sdf1 /tmp/release

sudo mkdir /tmp/release/home
sudo mount /dev/sdg1 /tmp/release/home/
sudo mkdir /tmp/release/home/srv
sudo mkdir /tmp/release/home/var
