set -o errexit
HASHFILE=sha256sums.txt
rm -rf $HASHFILE
for f in download/*; do shasum -a 256 $f >> $HASHFILE; done
cat $HASHFILE