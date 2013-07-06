cd $LFS/sources
tar jxvf  perl*.bz2
cd perl*

patch -Np1 -i ../perl-5.16.2-libc-1.patch
sh Configure -des -Dprefix=/tools
make

cp -v perl cpan/podlators/pod2man /tools/bin
mkdir -pv /tools/lib/perl5/5.16.2
cp -Rv lib/* /tools/lib/perl5/5.16.2
