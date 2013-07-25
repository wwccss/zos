cd /sources/blfs/
tar xvf net-tools*.tar.gz
cd net-tools*
sed -i -e '/Token/s/y$/n/'        config.in &&
sed -i -e '/HAVE_HWSTRIP/s/y$/n/' config.in &&
yes "" | make config                 &&
make
sudo make update
