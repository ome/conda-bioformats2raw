set pkg=%PKG_NAME%-%PKG_VERSION%-%PKG_BUILDNUM%

mkdir %PREFIX%\bin
mkdir %PREFIX%\share\%pkg%
xcopy %SRC_DIR%\* %PREFIX%\share\%pkg%\ /E
if errorlevel 1 exit 1

echo %%~dp0..\share\%pkg%\bin\bioformats2raw %%* > %PREFIX%\bin\bioformats2raw.bat
if errorlevel 1 exit 1
