set pkg=bioformats2raw-%PKG_VERSION%-%PKG_BUILDNUM%

mkdir %PREFIX%\share\%pkg%\bin
copy %SRC_DIR%\bin\bioformats2raw.bat %PREFIX%\share\%pkg%\bin\
if errorlevel 1 exit 1

mkdir %PREFIX%\bin
echo %%~dp0..\share\%pkg%\bin\bioformats2raw %%* > %PREFIX%\bin\bioformats2raw.bat
if errorlevel 1 exit 1

mkdir %PREFIX%\share\%pkg%\lib
xcopy %SRC_DIR%\lib\* %PREFIX%\share\%pkg%\lib\ /E
if errorlevel 1 exit 1
