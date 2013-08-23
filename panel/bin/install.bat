%VBoxManage% createvm -name zentaomos -register
%VBoxManage% storagectl zentaomos --name "IDE Controller" --add ide
%VBoxManage% storageattach zentaomos --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium .\vmdk\system.vmdk
%VBoxManage% storageattach zentaomos --storagectl "IDE Controller" --port 1 --device 0 --type hdd --medium .\vmdk\data.vmdk
%VBoxManage% modifyvm zentaomos --memory %memory% --cpus %cpus% --acpi on --nic1 nat --nictype1 82540EM
%VBoxManage% modifyvm zentaomos --natdnsproxy1 on
%VBoxManage% modifyvm zentaomos --natpf1 "http,tcp,,%httpPort%,,80" 
%VBoxManage% modifyvm zentaomos --natpf1 "ssh,tcp,,%sshPort%,,22"
