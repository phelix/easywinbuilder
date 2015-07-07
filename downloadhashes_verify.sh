set -o errexit
echo verify hashes of downloaded files against easywinbuilder saved values
HASHFILE=sha256sums.txt
shasum -a 256 -c $HASHFILE
echo

