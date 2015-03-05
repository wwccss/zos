cat > library-check.sh << "EOF"
#!/bin/bash
for lib in lib{gmp,mpfr,mpc}.la; do
  echo $lib: $(if find /usr/lib* -name $lib|
               grep -q $lib;then :;else echo not;fi) found
done
unset lib
EOF

bash library-check.sh
rm -fr library-check.sh
