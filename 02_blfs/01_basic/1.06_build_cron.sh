groupadd -g 25 vxicron &&
useradd -c "Vixie cron User" -d /dev/null -u 25 -g vxicron -s /bin/false vxicron

cd /sources/blfs
mkdir cron_4.1
cd cron_4.1
sh < ../cron*.shar

pkg watch /mnt/lfs

sed -i 's@/usr/ucb/vi@/usr/bin/vim@' pathnames.h &&
echo '#define CRON_GROUP "vxicron"' >> config.h &&
make
make install

cd ../blfs-bootscript*
sed -i 's/fcron/cron/g' blfs/init.d/fcron
mv blfs/init.d/fcron blfs/init.d/cron
sed -i 's/fcron/cron/g' Makefile
make install-cron

mkdir /var/cron
touch /var/cron/cron.allow
touch /var/cron/cron.deny
echo z > /var/cron/cron.allow

cd -
pkg savelog vixiecron
