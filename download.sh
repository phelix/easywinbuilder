set -o errexit

echo Creating $DOWNLOAD directory...
if [ ! -d $DOWNLOAD ]; then
    mkdir $DOWNLOAD
fi

cd $DOWNLOAD/

echo Downloading 7zip [unfortunately necessary for compiler extraction]...
wget -N --no-check-certificate http://7-zip.org/a/$SEVENZIP.zip
echo Downloading dependencies...
wget -N --no-check-certificate "https://github.com/libevent/libevent/releases/download/release-$LIBEVENT-stable/libevent-$LIBEVENT-stable.tar.gz" -O libevent-$LIBEVENT-stable.tar.gz
wget -N --no-check-certificate "http://googletest.googlecode.com/files/$GTEST.zip" -O $GTEST.zip
wget -N --no-check-certificate "http://download.qt.io/archive/qt/$QTVERSIONMAJOR/$QTVERSION/submodules/qtbase-opensource-src-$QTVERSION.zip"
wget -N --no-check-certificate "http://download.qt.io/archive/qt/$QTVERSIONMAJOR/$QTVERSION/submodules/qttools-opensource-src-$QTVERSION.zip"
wget -N --no-check-certificate "http://www.openssl.org/source/$OPENSSL.tar.gz"
wget -N --no-check-certificate "http://download.oracle.com/berkeley-db/$BERKELEYDB.tar.gz"
wget -N --no-check-certificate "http://downloads.sourceforge.net/project/boost/boost/$BOOSTVERSION/$BOOST.tar.gz"
wget -N --no-check-certificate "http://miniupnp.tuxfamily.org/files/download.php?file=$MINIUPNPC.tar.gz"
wget -N --no-check-certificate "http://download.sourceforge.net/libpng/$LIBPNG.tar.gz"
wget -N --no-check-certificate "https://github.com/google/protobuf/archive/v$PROTOBUF.tar.gz" -O protobuf-$PROTOBUF.tar.gz
wget -N --no-check-certificate "http://downloads.sourceforge.net/project/pkgconfiglite/$PKGCONFIGVERSION/$PKGCONFIGFILE"
echo

echo Downloading coin source...
wget -N --no-check-certificate $COINDOWNLOADPATH -O $COINARCHIVE
echo

echo Downloading compiler...
wget -N --no-check-certificate "http://sourceforge.net/projects/mingw-w64/files/Toolchains targetting Win32/Personal Builds/mingw-builds/$MINGW64VERSION/threads-posix/dwarf/$MINGW64FILE"
echo

cd ..
./downloadhashes_verify.sh
