@call set_vars.bat
set PATH=%PATH%;%QTPATH%/bin
@bash ./build_daemon_and_qt.sh
@call 5_gather_files.bat
@if errorlevel 1 goto error
