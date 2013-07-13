ehco 'run this in when the file system if umounted';
find / -exec file {} \; | grep "not stripped"
