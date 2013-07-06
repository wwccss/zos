cd /sources/glibc-build
make -k check 2>&1 | tee glibc-check-log
grep Error glibc-check-log
