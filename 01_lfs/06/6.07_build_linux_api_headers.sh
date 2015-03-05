cd /sources/
tar xvf linux*.tar.xz
cd linux*

make mrproper

pkg watch /mnt/lfs

make INSTALL_HDR_PATH=dest headers_install
find dest/include \( -name .install -o -name ..install.cmd \) -delete
cp -rv dest/include/* /usr/include

pkg savelog linux
