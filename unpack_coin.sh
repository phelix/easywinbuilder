set -o errexit

echo Unpacking source [$COINARCHIVE]
tar --atime-preserve -xzvf $DOWNLOAD/$COINARCHIVE > /dev/null
echo
