cd /sources/blfs
unzip phpMy*.zip
cd phpMy*

pkg watch /mnt/lfs

mv locale locale.bak
mkdir locale
mv locale.bak/en_GB locale
mv locale.bak/zh_* locale
rm -fr locale.bak

cat > config.inc.php <<EOT
<?php
\$cfg['blowfish_secret']               = 'zos';
\$cfg['Servers'][1]['auth_type']       = 'config';
\$cfg['Servers'][1]['user']            = 'root';
\$cfg['Servers'][1]['password']        = ''; 
\$cfg['Servers'][1]['port']            = '3306';
\$cfg['Servers'][1]['host']            = 'localhost';
\$cfg['Servers'][1]['connect_type']    = 'tcp';
\$cfg['Servers'][1]['extension']       = 'mysqli';
\$cfg['Servers'][1]['AllowNoPassword'] = true;
EOT

rm -fr examples
rm -fr js/openlayers
rm -fr doc
rm -fr setup
rm -fr themes/original

mkdir /srv/pma
cp -rv * /srv/pma

pkg savelog phpmyadmin
