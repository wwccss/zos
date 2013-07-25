sudo mv -v /usr/share /usr/share.bak
sudo mkdir -v /usr/share

sudo cp -frv /usr/share.bak/grub /usr/share

sudo mkdir -pv /usr/share/mysql/english
sudo cp -frv /usr/share.bak/mysql/english/errmsg.sys /usr/share/mysql/english/

sudo mkdir -pv /usr/share/terminfo/l/
sudo mkdir -pv /usr/share/terminfo/x/
sudo cp -fv /usr/share.bak/terminfo/l/linux /usr/share/terminfo/l/
sudo cp -fv /usr/share.bak/terminfo/x/xterm /usr/share/terminfo/x/

sudo mkdir -pv /usr/share/vim/vim73/syntax
sudo cp -frv /usr/share.bak/vim/vim73/*.vim /usr/share/vim/vim73/
sudo cp -frv /usr/share.bak/vim/vim73/colors /usr/share/vim/vim73/
sudo cp -frv /usr/share.bak/vim/vim73/indent /usr/share/vim/vim73/
sudo cp -frv /usr/share.bak/vim/vim73/ftplugin /usr/share/vim/vim73/
sudo rm -frv /usr/share/vim/vim73/*example*/
sudo rm -frv /usr/share/vim/vim73/bugreport*

sudo cp -frv /usr/share.bak/vim/vim73/syntax/{css,html,javascript,php,sh,sqloracle,syncolor,synload,syntax,nosyntax,vb}.vim /usr/share/vim/vim73/syntax/
