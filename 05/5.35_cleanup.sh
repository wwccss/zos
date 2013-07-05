# this shell is used to clean up the source code extraced and the build directories.
cd $LFS/sources
mkdir .package
mv *.gz *.bz2 *.xz *.patch .package
mkdir temp
mv * temp/
rm -fr temp

mv .package/* .
rmdir .package
