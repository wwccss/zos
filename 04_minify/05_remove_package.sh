# Backup the basic libraries.
sudo mkdir -p /usr/lib/bak
sudo mv -v /usr/lib/libgcc* /usr/lib/bak
sudo mv -v /usr/lib/libstdc++* /usr/lib/bak
sudo mv -v /usr/lib/libpcre* /usr/lib/bak

# Remove these packages.
sudo pkg remove gcc
sudo pkg remove autoconf
sudo pkg remove automake
sudo pkg remove bison
sudo pkg remove cmake
sudo pkg remove flex
sudo pkg remove m4
sudo pkg remove make
sudo pkg remove man-db
sudo pkg remove man-pages
sudo pkg remove pcre
sudo pkg remove perl
sudo pkg remove pkg-config
sudo pkg remove pyton27
sudo pkg remove scons
sudo pkg remove xml::parser
sudo pkg remove git
sudo pkg remove libtiff
sudo pkg remove nasm
sudo pkg remove groff

# Restore these libraries.
sudo mv -v /usr/lib/bak/* /usr/lib/
sudo rm -frv /usr/lib/bak
