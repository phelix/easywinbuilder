@rem Coin to download - change these for altcoins
@set COINARCHIVE=bitcoin-0.11.2.tar.gz
@set COINDOWNLOADPATH=https://bitcoin.org/bin/bitcoin-core-0.11.2/%COINARCHIVE%
@rem folder within COINARCHIVE
@set COINFOLDER=bitcoin-0.11.2

@rem MinGW (MSYS)
@set MINGWDLPATH=https://sourceforge.net/projects/mingw/files/Installer/mingw-get-setup.exe/download

@rem Compiler
@set MINGW64VERSION=4.9.2
@set MINGW64FILE=i686-%MINGW64VERSION%-release-posix-dwarf-rt_v4-rev3.7z

@rem QT source download
@set QTVERSIONMAJOR=5.3
@set QTVERSION=%QTVERSIONMAJOR%.2

@rem unfortunately PKG-CONFIG is necessary
@set PKGCONFIGVERSION=0.28-1
@set PKGCONFIG=pkg-config-lite-%PKGCONFIGVERSION%
@set PKGCONFIGFILE=%PKGCONFIG%_bin-win32.zip

@rem unfortunately 7zip is necessary for compiler extraction
@set SEVENZIP=7za920

@rem attention, EWBPATH has trailing slash
@set EWBPATH=%~dp0
@rem flip slashes
@set EWBPATH=%EWBPATH:\=/%
@rem remove colon
@set EWBPATHMSYS=/%EWBPATH::=%

@rem Other path variables - use forward slashes!
@set MINGWPATH=C:/MinGW
@set MSYSPATH=%MINGWPATH%/msys/1.0/bin
@set MINGW64PATH=%EWBPATH%mingw32
@set QTBASEPATH=%EWBPATH%Qt
@set QTPATH=%QTBASEPATH%/%QTVERSION%
@rem remove colon
@set QTPATHMSYS=/%QTPATH::=%

@rem Set system path
@set PATH=%MINGW64PATH%/bin;%MSYSPATH%

@rem Dependencies
@set OPENSSL=openssl-1.0.1p
@set BERKELEYDB=db-4.8.30.NC
@set BOOSTSUBVERSION=58
@set BOOST=boost_1_%BOOSTSUBVERSION%_0
@set BOOSTVERSION=1.%BOOSTSUBVERSION%.0
@set MINIUPNPC=miniupnpc-1.9.20151008
@set PROTOBUF=2.6.1
@rem gtest is needed by protobuf
@set GTEST=gtest-1.7.0
@set LIBPNG=libpng-1.6.16
@set LIBEVENT=2.0.22

@rem Internal paths
@set DOWNLOAD=download
@set LIB=lib
@set RELEASE=release
@set PERL=%MSYSPATH%/perl.exe

@rem The following will be set as additional CXXFLAGS and CFLAGS to go towards deterministic builds - no ' or ", space is ok
@set ADDITIONALCCFLAGS= -fno-guess-branch-probability -frandom-seed=1984 -Wno-unused-variable -Wno-unused-value -Wno-sign-compare -Wno-strict-aliasing

@rem Language Settings - always US
@set LANG=en_US.UTF8
@set LC_ALL=en_US.UTF8

@rem Note: Variables set here can NOT be overwritten in makefiles
