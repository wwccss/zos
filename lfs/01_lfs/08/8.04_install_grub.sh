grub-install /dev/sdb
cat > /boot/grub/grub.cfg << "EOF"
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

insmod ext2
set root=(hd0,1)

menuentry "zentao management operating system 1.0" {
        linux   /boot/vmlinuz-3.8.1-lfs-7.3 root=/dev/sda1 ro
}
EOF
