@ECHO OFF
set string=%1
set user=%2

set string=%string:telnet:=%
for /f "delims=? " %%a in (%string%) do set host=%%a
start C:\zabbix\app\Putty.exe -telnet %host% -l %user%
EXIT