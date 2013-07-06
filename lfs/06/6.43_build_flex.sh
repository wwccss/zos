cd /sources/
tar jxvf flex*.bz2
cd flex*

patch -Np1 -i ../flex-2.5.37-bison-2.6.1-1.patch

./configure --prefix=/usr             \
            --docdir=/usr/share/doc/flex-2.5.37
make
make check
make install

ln -sv libfl.a /usr/lib/libl.a

cat > /usr/bin/lex << "EOF"
#!/bin/sh
# Begin /usr/bin/lex

exec /usr/bin/flex -l "$@"

# End /usr/bin/lex
EOF
chmod -v 755 /usr/bin/lex
