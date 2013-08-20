%VBoxManage% storageattach zentaomos --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium none
%VBoxManage% storageattach zentaomos --storagectl "IDE Controller" --port 1 --device 0 --type hdd --medium none
%VBoxManage% closemedium disk ..\vmdk\system.vmdk
%VBoxManage% closemedium disk ..\vmdk\data.vmdk
%VBoxManage% unregistervm zentaomos --delete
