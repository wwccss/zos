cd /sources/
tar xvf systemd*.xz 
cd systemd*

tar -xvf ../udev-lfs*.bz2

make -f udev-lfs-197-2/Makefile.lfs
make -f udev-lfs-197-2/Makefile.lfs install
build/udevadm hwdb --update
bash udev-lfs-197-2/init-net-rules.sh
