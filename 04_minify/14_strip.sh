# this file run in chroot env.
find /{,usr/}{bin,lib,sbin} -type f \
  -exec strip --strip-debug '{}' ';'
