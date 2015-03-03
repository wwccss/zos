cd /sources/blfs
tar xvf scons*.tar.gz
cd scons*

pkg watch /mnt/lfs

python setup.py install --prefix=/usr  \
  --standard-lib \
  --optimize=1   \
  --install-data=/usr/share

pkg savelog scons
