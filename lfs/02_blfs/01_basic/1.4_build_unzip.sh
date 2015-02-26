cd /sources/blfs
tar xvf unzip*.tar.gz

cd unzip*

case `uname -m` in
  i?86)
    sed -i -e 's/DASM"/DASM -DNO_LCHMOD"/' unix/Makefile
    make -f unix/Makefile linux
    ;;
  *)
    sed -i -e 's/CFLAGS="-O -Wall/& -DNO_LCHMOD/' unix/Makefile
    make -f unix/Makefile linux_noasm
    ;;
esac

sudo make prefix=/usr install
