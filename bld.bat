mkdir %LIBRARY_PREFIX%\bin
copy %SRC_DIR%\*.bat %LIBRARY_PREFIX%\bin
copy %SRC_DIR%\*.jar %LIBRARY_PREFIX%\bin
if errorlevel 1 exit 1
