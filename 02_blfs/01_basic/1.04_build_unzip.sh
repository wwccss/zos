cd /sources/blfs
tar xvf unzip*.tar.gz
cd unzip*

pkg watch /mnt/lfs

case `uname -m` in
  i?86)
    sed -i -e 's/DASM_CRC"/DASM_CRC -DNO_LCHMOD"/' unix/Makefile
    make -f unix/Makefile linux
    ;;
  *)
    sed -i -e 's/CFLAGS="-O -Wall/& -DNO_LCHMOD/' unix/Makefile
    make -f unix/Makefile linux_noasm
    ;;
esac

make prefix=/usr MANDIR=/usr/share/man/man1 install

pkg savelog unzip
