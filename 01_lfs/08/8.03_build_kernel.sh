cd /sources/
tar xvf linux*.tar.xz
cd linux*

pkg watch /mnt/lfs

make mrproper
make LANG=en_US.UTF-8 LC_ALL= menuconfig
make

make modules_install
cp -v arch/x86/boot/bzImage /boot/vmlinuz-3.16.2-lfs-7.6
cp -v .config /boot/config-3.16.2

install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf

install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true

# End /etc/modprobe.d/usb.conf
EOF

pkg savelog kernel
