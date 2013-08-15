%VBoxManage% createvm -name zentaomos -register
%VBoxManage% storagectl zentaomos --name "SATA Controller" --add sata
%VBoxManage% storageattach zentaomos --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium ..\vmdk\system.vmdk
%VBoxManage% storageattach zentaomos --storagectl "SATA Controller" --port 1 --device 0 --type hdd --medium ..\vmdk\data.vmdk
