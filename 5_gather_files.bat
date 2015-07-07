@call set_vars.bat

@rem clean up previous files if any
@if not exist %RELEASE% mkdir %RELEASE%
@del %RELEASE%\*.* /S /Q /F

@echo Gather executables
copy %COINFOLDER%\src\*.exe %RELEASE%\
copy %COINFOLDER%\src\qt\*.exe %RELEASE%\

@dir %RELEASE%

@if not "%RUNALL%"=="1" pause
