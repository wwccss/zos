cd /sources/
tar xvf XML-Parser*.tar.gz
cd XML*

pkg watch /mnt/lfs

perl Makefile.PL
make
make install

pkg savelog xml-parser
