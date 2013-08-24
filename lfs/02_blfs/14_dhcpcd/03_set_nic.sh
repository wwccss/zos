sudo cp  -v ../../../bin/setnic /etc/init.d/
cd /etc/rc.d/rc3.d/
sudo ln -s ../../init.d/setnic ./S15setnic
