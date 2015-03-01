cd /sources/blfs
tar xvf sqlite*.tar.gz
cd sqlite*

pkg watch /mnt/lfs

./configure --prefix=/usr --disable-static        \
            CFLAGS="-g -O2 -DSQLITE_ENABLE_FTS3=1 \
            -DSQLITE_ENABLE_COLUMN_METADATA=1     \
            -DSQLITE_ENABLE_UNLOCK_NOTIFY=1       \
            -DSQLITE_SECURE_DELETE=1" &&
make
make install

pkg savelog sqlite
