@call set_vars.bat
set PATH=%PATH%;%QTPATH%/bin
@bash ./build_daemon_and_qt.sh
@if not "%RUNALL%"=="1" pause
