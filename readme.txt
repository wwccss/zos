ZOS is a light linux os with apache, php and mysql build in it, which can only run in virutal environment like virtualbox, vmware. ZOS aims to supoort one all-in-one box for company to run a php app like zentaopms, wordpress. It has just two virtual machine files system.vmdk and data.vmdk, can run it on windows with virtualbox or vmware support.

ZOS is build from LFS. This project's codes are the shells to build and reduct it. To build ZOS, need seven disks as flowing:
#/dev/sda  the debian build host system
#/dev/sdb  the lfs system.
#/dev/sdc  the tools 
#/dev/sdd  the source
#/dev/sde  the minify
#/dev/sdf  the release system
#/dev/sdg  the release data.
