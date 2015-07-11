@call set_vars.bat
@bash patch_files.sh
@cd %LIB:/=\%
@echo miniupnp...
@cd %MINIUPNPC%\miniupnpc
@rem mingw32-make is different from normal msys make
mingw32-make -f Makefile.mingw ADDITIONALCCFLAGS="%ADDITIONALCCFLAGS%"
@cd ..\..\..
@if not "%RUNALL%"=="1" pause
