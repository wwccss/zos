cd /sources/blfs
tar xvf serf*.bz2
cd serf*

pkg watch /mnt/lfs

sed -i "/Append/s:RPATH=libdir,::"   SConstruct &&
sed -i "/Default/s:lib_static,::"    SConstruct &&
sed -i "/Alias/s:install_static,::"  SConstruct &&
scons PREFIX=/usr
scons PREFIX=/usr install

pkg savelog libserf
