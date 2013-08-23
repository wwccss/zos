cd /sources/gmp*
make install

mkdir -v /usr/share/doc/gmp-5.1.1
cp    -v doc/{isa_abi_headache,configuration} doc/*.html \
           /usr/share/doc/gmp-5.1.1
