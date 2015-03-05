cd /tmp/
pkg watch /mnt/lfs
grub-install /dev/sdb
cat > /boot/grub/grub.cfg << "EOF"
set default=0
set timeout=5
insmod ext2
set root=(hd0,1)
menuentry "zos 1.1(build from LFS 7.6)" {
        linux /boot/vmlinuz-3.16.2-lfs-7.6 root=/dev/sda1 ro
}
EOF

pkg savelog grub-config
