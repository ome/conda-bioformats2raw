mkdir %LIBRARY_PREFIX%\bin
mkdir %LIBRARY_PREFIX%\lib
copy %SRC_DIR%\bin\*.bat %LIBRARY_PREFIX%\bin
copy %SRC_DIR%\lib\*.jar %LIBRARY_PREFIX%\lib
if errorlevel 1 exit 1
