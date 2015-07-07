# miniupnpc
sed -i.bak 's/\$(CC) -enable-stdcall-fixup/\$(CC) -Wl,-enable-stdcall-fixup/g' $LIB/${MINIUPNPC}/miniupnpc/Makefile.mingw  # workaround, see http://stackoverflow.com/questions/13227354/warning-cannot-find-entry-symbol-nable-stdcall-fixup-defaulting
sed -i.bak 's/all:	init upnpc-static upnpc-shared testminixml libminiupnpc.a miniupnpc.dll/all:	init upnpc-static/g' $LIB/${MINIUPNPC}/miniupnpc/Makefile.mingw  # only need static, rest is not compiling

# qttools - disable windeployqt
sed -i.bak 's/win32|winrt:SUBDIRS += windeployqt/#win32|winrt:SUBDIRS += windeployqt/g' $QTBASEPATH/qttools-opensource-src-$QTVERSION/src/src.pro  # not compiling without fixes
