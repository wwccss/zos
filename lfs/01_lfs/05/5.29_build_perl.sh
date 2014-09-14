cd $LFS/sources
tar jxvf  perl*.bz2
cd perl*

sh Configure -des -Dprefix=/tools -Dlibs=-lm
make

cp -v perl cpan/podlators/pod2man /tools/bin
mkdir -pv /tools/lib/perl5/5.20.0
cp -Rv lib/* /tools/lib/perl5/5.20.0
