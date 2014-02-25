set -e
hash clang-format || exit 1;
cd ../src;
for i in `ls ../src`; do 
  cp $i tmp.$i.c;
  clang-format tmp.$i.c > $i;
done;
rm tmp.*;
