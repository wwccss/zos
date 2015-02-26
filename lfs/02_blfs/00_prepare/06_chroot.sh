# this is run out chroot.
sudo chroot "$LFS" /usr/bin/env -i              \
  HOME=/root TERM="$TERM" PS1='\u:\w\$ ' \
  PATH=/bin:/usr/bin:/sbin:/usr/sbin     \
  /bin/bash --login
