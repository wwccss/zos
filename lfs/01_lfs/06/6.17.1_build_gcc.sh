cd /sources/
tar jxvf gcc*.tar.bz2
cd gcc*

sed -i 's/if \((code.*))\)/if (\1 \&\& \!DEBUG_INSN_P (insn))/' gcc/sched-deps.c
patch -Np1 -i ../gcc-4.9.1-upstream_fixes-1.patch

mkdir -v ../gcc-build
cd ../gcc-build

SED=sed                       \
../gcc-4.9.1/configure        \
     --prefix=/usr            \
     --enable-languages=c,c++ \
     --disable-multilib       \
     --disable-bootstrap      \
     --with-system-zlib

make
#ulimit -s 32768
#make -k check
#../gcc-4.7.2/contrib/test_summary
