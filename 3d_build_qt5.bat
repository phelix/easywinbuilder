echo Building qt environment..

@call set_vars.bat

bash ./patch_files.sh

set INCLUDE=%EWBPATH%%LIB%/%LIBPNG%;%EWBPATH%%LIB%/%OPENSSL%/include
set INCLUDE=%INCLUDE:/=\%
set LIB=%EWBPATH%%LIB%/%LIBPNG%/.libs;%EWBPATH%%LIB%/%OPENSSL%
set LIB=%LIB:/=\%

cd %QTPATH%

configure.exe -release -opensource -confirm-license -static -make libs -no-sql-sqlite -no-opengl -system-zlib -qt-pcre -no-icu -no-gif -system-libpng -no-libjpeg -no-freetype -no-angle -openssl -no-dbus -no-audio-backend -no-wmf-backend -no-qml-debug -no-vcproj
@if errorlevel 1 goto error

mingw32-make
@if errorlevel 1 goto error

set PATH=%PATH%;%QTPATH%/bin

cd %QTBASEPATH%\qttools-opensource-src-%QTVERSION%
qmake qttools.pro
@if errorlevel 1 goto error

mingw32-make
@if errorlevel 1 goto error

cd %EWBPATH%

@goto end

:error
@echo Fatal error!

:end
@if not "%RUNALL%"=="1" pause
