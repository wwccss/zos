cd /tmp/minify
sudo cp -Rav {bin,boot,dev,etc,lib,media,mnt,opt,proc,root,run,sbin,sys,tmp,usr}  /tmp/release
sudo cp -Rav srv/*  /tmp/release/home/srv/
sudo cp -Rav var/*  /tmp/release/home/var/
sudo cp -Rav home/*  /tmp/release/home/

cd /tmp/release
sudo ln -s home/srv .
sudo ln -s home/var .
