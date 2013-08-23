sudo cp  -v ../bin/setnic /tmp/release/etc/init.d/
cd /tmp/release/etc/rc.d/rc3.d/
sudo ln -s ../../init.d/setnic ./S15setnic
