@if "%2" NEQ  "-p" @echo off

@set compiler=%1
@if "%compiler%"=="?" set compiler=

@call env-init.cmd -p
@del %prj%.res 1>nul 2>nul

call %dbx%\cmd\make_prj.cmd %compiler% ?

@echo\
@echo ***
@echo * build resource "%prj%.%prj_ext%":
@echo ***
@echo\

brcc32.exe %prj_path%\%prj%.%prj_ext%
@ren %prj%.RES %prj%.res 1>nul 2>nul

brcc32.exe %prj_path%\%prj%_debug.%prj_ext%
@ren %prj%_debug.RES %prj%_debug.res 1>nul 2>nul

@echo\
@echo Done.
@echo\

@if "%2" NEQ  "-p" @echo on