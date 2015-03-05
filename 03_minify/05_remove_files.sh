# remove docs.
sudo rm -frv /usr/share/man
sudo rm -frv /usr/man
sudo rm -frv /usr/share/tex{info,mf}
sudo rm -frv /usr/share/groff
sudo rm -frv /usr/share/{doc,info}
sudo rm -frv /usr/doc
sudo rm -frv /usr/info

echo 'rm compiling tools'
sudo rm -frv /usr/share/{automake*,aclocal*,autoconf,libtool}
sudo rm -frv /usr/bin/{make,automake*,aclocal*,autoconf,autom4te,autoheader}
sudo rm -frv /usr/bin/{autoreconf,autoscan,autoupdate,ifnamesi,libtool*}
sudo rm -frv /{,usr/}lib/*.la
sudo rm -frv /usr/lib/{crt*.o,?crt1.o,gcc-lib}
sudo rm -frv /lib/cpp
sudo rm -frv /usr/bin/{c++*,g++,cc,gcov,gcc*,cpp,i?86-pc-linux-{g++,c++,gcc*}}
sudo rm -frv /usr/include
sudo rm -frv /usr/lib/*.a
sudo rm -frv /usr/bin/{ccmake,cmake,cmake-gui,cpack,ctest}
sudo rm -frv /usr/share/cmake*

echo 'rm locale file'
sudo rm -fr /usr/share/locale
sudo rm -fr /usr/lib/locale

sudo rm -fr /usr/php
sudo rm -fr /usr/my.cnf
sudo rm -fr /usr/my-new.cnf
