@call set_vars.bat

@rem clean up previous files if any
@if not exist %COINFOLDER%-%RELEASE% mkdir %COINFOLDER%-%RELEASE%
@del %COINFOLDER%-%RELEASE%\*.* /S /Q /F

@echo Gather executables
copy %COINFOLDER%\src\*.exe %COINFOLDER%-%RELEASE%\
copy %COINFOLDER%\src\qt\*.exe %COINFOLDER%-%RELEASE%\

@dir %COINFOLDER%-%RELEASE%

@if not "%RUNALL%"=="1" pause
