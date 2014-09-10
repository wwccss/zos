cd $LFS/sources
tar xxvf linux*
cd linux*
make mrproper
make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include
