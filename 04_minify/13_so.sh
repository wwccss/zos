sudo mv /usr/lib/libcrypto*  /usr/lib.bak
sudo mv /usr/lib/libcurl*    /usr/lib.bak
sudo mv /usr/lib/libfreetype* /usr/lib.bak
sudo mv /usr/lib/libjpeg* /usr/lib.bak
sudo mv /usr/lib/liblber* /usr/lib.bak
sudo mv /usr/lib/libldap* /usr/lib.bak
sudo mv /usr/lib/libpng16* /usr/lib.bak
sudo mv /usr/lib/libsasl2* /usr/lib.bak
sudo mv /usr/lib/libssl* /usr/lib.bak
sudo mv /usr/lib/libxml2* /usr/lib.bak
sudo mv /usr/lib/libapr* /usr/lib.bak
sudo mv /usr/lib/libaprutil* /usr/lib.bak
sudo mv /usr/lib/libcrypto* /usr/lib.bak
sudo mv /usr/lib/libexpat* /usr/lib.bak
sudo mv /usr/lib/libgcc_s* /usr/lib.bak
sudo mv /usr/lib/libgdbm* /usr/lib.bak
sudo mv /usr/lib/libssl* /usr/lib.bak
sudo mv /usr/lib/libstdc++* /usr/lib.bak
sudo cp -av /usr/lib/sudo /usr/lib.bak
sudo mv /usr/lib/php /usr/lib.bak
sudo mv /usr/lib/httpd /usr/lib.bak
sudo mv /usr/lib/libgmp.so.* /usr/lib.bak

sudo rm -frv /usr/lib/*so*
sudo rm -frv /usr/lib/groff
sudo rm -frv /usr/lib/group
sudo rm -frv /usr/lib/python*
sudo rm -frv /usr/lib/php
sudo cp -av /usr/lib.bak/ /usr/lib/
sudo rm -fr /usr/lib.bak
