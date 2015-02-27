sudo groupadd -g 24 vxicron &&
sudo useradd -c "Vixie cron User" -d /dev/null -u 24 -g vxicron -s /bin/false vxicron

cd /sources/blfs
mkdir cron_4.1
cd cron_4.1
sh < ../cron*.shar

sed -i 's@/usr/ucb/vi@/usr/bin/vim@' pathnames.h &&
echo '#define CRON_GROUP "vxicron"' >> config.h &&
make

sudo make install

cd ../blfs-bootscript*
sed -i 's/fcron/cron/g' blfs/init.d/fcron
mv blfs/init.d/fcron blfs/init.d/cron
sed -i 's/fcron/cron/g' Makefile
sudo make install-cron

sudo mkdir /var/cron
sudo touch /var/cron/cron.allow
sudo touch /var/cron/cron.deny
sudo chown z:z /var/cron/cron.allow
echo z > /var/cron/cron.allow
sudo chown root:root /var/cron/cron.allow
