set -o errexit

echo Creating $LIB directory...
if [ ! -d $LIB ]; then
    mkdir $LIB
fi

echo Unpacking 7zip...
unzip -o $DOWNLOAD/$SEVENZIP.zip -d $MSYSPATH > /dev/null

echo Unpacking compiler...
7za x -y -o$EWBPATH $DOWNLOAD/$MINGW64FILE > /dev/null

echo Unpacking dependencies...
echo  miniupnpc [$MINIUPNPC]
mkdir -p $LIB/$MINIUPNPC
tar --atime-preserve -xzvf $DOWNLOAD/$MINIUPNPC.tar.gz --directory $LIB/$MINIUPNPC > /dev/null
rm -rf $LIB/$MINIUPNPC/miniupnpc
mv $LIB/$MINIUPNPC/$MINIUPNPC $LIB/$MINIUPNPC/miniupnpc -u

echo libevent [$LIBEVENT]
tar --atime-preserve -xzvf $DOWNLOAD/libevent-$LIBEVENT-stable.tar.gz --directory $LIB > /dev/null

echo libpng [$LIBPNG]
tar --atime-preserve -xzvf $DOWNLOAD/$LIBPNG.tar.gz --directory $LIB > /dev/null

echo protobuf [$PROTOBUF]
tar --atime-preserve -xzvf $DOWNLOAD/protobuf-$PROTOBUF.tar.gz --directory $LIB > /dev/null 2>&1 || true

echo protobuf - gtest dependency [$GTEST]
unzip -o $DOWNLOAD/$GTEST.zip -d $LIB > /dev/null
rm -rf $LIB/protobuf-$PROTOBUF/gtest
mv $LIB/$GTEST $LIB/protobuf-$PROTOBUF/gtest -u

echo pkg-config-lite [$PKGCONFIGFILE]
unzip -o $DOWNLOAD/$PKGCONFIGFILE -d $LIB > /dev/null
cp -r $LIB/$PKGCONFIG/* $MSYSPATH/..

echo  berkeleydb [$BERKELEYDB]
tar --atime-preserve -xzvf $DOWNLOAD/$BERKELEYDB.tar.gz --directory $LIB > /dev/null

echo QT5 base [$QTVERSION]
rm -rf $QTBASEPATH
mkdir -p $QTBASEPATH
unzip -o $DOWNLOAD/qtbase-opensource-src-$QTVERSION.zip -d $QTBASEPATH > /dev/null
mv $QTBASEPATH/qtbase-opensource-src-$QTVERSION $QTPATH -u -f
echo QT5 tools [$QTVERSION]
unzip -o $DOWNLOAD/qttools-opensource-src-$QTVERSION.zip -d $QTBASEPATH > /dev/null
mv $QTBASEPATH/qttools-opensource-src-$QTVERSION/src/windeployqt/windeployqt.pro $QTBASEPATH/qttools-opensource-src-$QTVERSION/src/windeployqt/windeployqt.pro_ -u -f
echo > $QTBASEPATH/qttools-opensource-src-$QTVERSION/src/windeployqt/windeployqt.pro

echo  openssl [$OPENSSL]
tar --atime-preserve --dereference -xzvf $DOWNLOAD/$OPENSSL.tar.gz --directory $LIB > /dev/null

echo  boost [$BOOST]
tar --atime-preserve -xzvf $DOWNLOAD/$BOOST.tar.gz --directory $LIB > /dev/null
