@set RUNALL=1

@call 3a_build_boost.bat
@if errorlevel 1 goto error
@call 3b_run_build_dep.bat
@if errorlevel 1 goto error
@call 3c_build_miniupnpc.bat
@if errorlevel 1 goto error
@call 3d_build_qt5.bat
@if errorlevel 1 goto error
@call 4_run_build_daemon_and_qt.bat
@if errorlevel 1 goto error
@echo.
@echo.
@goto end

:error
@echo Fatal error! Errorlevel: %errorlevel%

:end
@pause


