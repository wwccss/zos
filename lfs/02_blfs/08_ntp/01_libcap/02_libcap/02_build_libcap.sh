cd /sources/blfs
tar xvf libcap*.tar.gz
cd libcap*
make

sudo make RAISE_SETFCAP=no install
