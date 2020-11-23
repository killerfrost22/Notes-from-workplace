c:
cd\
REM DllRegisterServer...
regsvr32 /s msxml3.dll
regsvr32 /s wuapi.dll
regsvr32 /s wuaueng1.dll
regsvr32 /s wuauserv.dll
regsvr32 /s wuaueng.dll
regsvr32 /s atl.dll
regsvr32 /s wucltui.dll
regsvr32 /s wups.dll
regsvr32 /s wups2.dll
regsvr32 /s wuweb.dll
REM Removing Temp files from Admin. account...
IF EXIST "c:\Documents and Settings\Administrator\Local Settings\Temp" GOTO DELET
IF EXIST "c:\Documents and Settings\localadmin\Local Settings\Temp" GOTO DELET2 
IF EXIST "c:\Users\localadmin\AppData\Local\Temp" GOTO DELET3
IF EXIST "c:\Users\Administrator\AppData\Local\Temp" GOTO DELET4 ELSE GOTO SKIP
:SKIP
net stop wuauserv
REM Changing SoftwareDistribution folder name...
cd c:\windows
move SoftwareDistribution sdold
net start wuauserv
cd\
wuauclt /detectnow
GOTO END1
:DELET
cd "Documents and Settings\Administrator\Local Settings\Temp"
del /s /F /q *
GOTO SKIP
:DELET2
cd "Documents and Settings\localadmin\Local Settings\Temp"
del /s /F /q *
GOTO SKIP
:DELET3
cd "c:\Users\localadmin\AppData\Local\Temp"
del /s /F /q *
GOTO SKIP
:DELET4
cd "c:\Users\Administrator\AppData\Local\Temp"
del /s /F /q *
GOTO SKIP
:END1
