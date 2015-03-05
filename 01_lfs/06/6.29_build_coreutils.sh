cd /sources/
#tar xvf coreutils*.xz
cd coreutils*

pkg watch /mnt/lfs

patch -Np1 -i ../coreutils-8.23-i18n-1.patch &&
touch Makefile.in

FORCE_UNSAFE_CONFIGURE=1 ./configure \
            --prefix=/usr            \
            --enable-no-install-program=kill,uptime
#make
make install

/tools/bin/mv -v /usr/bin/{cat,chgrp,chmod,chown,cp,date,dd,df,echo} /bin
/tools/bin/mv -v /usr/bin/{false,ln,ls,mkdir,mknod,mv,pwd,rm} /bin
/tools/bin/mv -v /usr/bin/{rmdir,stty,sync,true,uname} /bin
/tools/bin/mv -v /usr/bin/chroot /usr/sbin
/tools/bin/mv -v /usr/share/man/man1/chroot.1 /usr/share/man/man8/chroot.8
sed -i s/\"1\"/\"8\"/1 /usr/share/man/man8/chroot.8
/tools/bin/mv -v /usr/bin/{head,sleep,nice,test,[} /bin

pkg savelog coreutils
