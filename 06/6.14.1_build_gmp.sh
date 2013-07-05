cd /sources/
tar xvf gmp*.tar.xz
cd gmp*

./configure --prefix=/usr --enable-cxx
make

make check 2>&1 | tee gmp-check-log
awk '/tests passed/{total+=$2} ; END{print total}' gmp-check-log
