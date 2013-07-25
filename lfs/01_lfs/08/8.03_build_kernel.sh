cd /sources/
tar xvf linux*.tar.xz
cd linux*

make mrproper
make LANG=en_US.ISO-8859-1 LC_ALL= menuconfig
make
make modules_install
cp -v arch/x86/boot/bzImage /boot/vmlinuz-3.8.1-lfs-7.3
cp -v System.map /boot/System.map-3.8.1
cp -v .config /boot/config-3.8.1

install -d /usr/share/doc/linux-3.8.1
cp -r Documentation/* /usr/share/doc/linux-3.8.1

#install -v -m755 -d /etc/modprobe.d
#cat > /etc/modprobe.d/usb.conf << "EOF"
## Begin /etc/modprobe.d/usb.conf
#
#install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
#install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true
#
## End /etc/modprobe.d/usb.conf
#EOF
