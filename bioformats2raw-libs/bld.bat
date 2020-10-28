set pkg=bioformats2raw-%PKG_VERSION%-%PKG_BUILDNUM%

mkdir %PREFIX%\share\%pkg%\lib
xcopy %SRC_DIR%\lib\* %PREFIX%\share\%pkg%\lib\ /E
if errorlevel 1 exit 1
