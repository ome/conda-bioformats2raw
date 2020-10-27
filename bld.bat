set pkg=%PKG_NAME%-%PKG_VERSION%-%PKG_BUILDNUM%

mkdir %LIBRARY_PREFIX%\bin
mkdir %LIBRARY_PREFIX%\share\%pkg%
xcopy %SRC_DIR%\* %LIBRARY_PREFIX%\share\%pkg%\ /E

echo %%~dp0\..\share\%pkg%\bin\bioformats2raw %%* > %LIBRARY_PREFIX%\bin\bioformats2raw.bat
if errorlevel 1 exit 1
