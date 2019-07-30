@echo off
@color 0A
title L2ClientDat
:start
echo %DATE% %TIME%
echo.
java -Xms512m -Xmx1024m -cp ./data/lib/*;L2ClientDat.jar l2god.Boot
if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end
:restart
echo.
echo Admin Restart ...
echo.
goto start
:error
echo.
echo Server terminated abnormaly
echo.
:end
echo.
echo server terminated
echo.