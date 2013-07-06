cd /sources/
tar xvf grub*.xz
cd grub*

sed -i -e '/gets is a/d' grub-core/gnulib/stdio.in.h

./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --disable-grub-emu-usb \
            --disable-efiemu       \
            --disable-werror

make
make install
