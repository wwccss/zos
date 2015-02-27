useradd z
passwd z
mkdir /home/z
chown z:z z
usermod -G z,sudo z
chown z:z -R /sources/
chown z:z -R /cmd/
