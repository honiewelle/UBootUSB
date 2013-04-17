@ECHO OFF

set EXPAND=YES
SET DIRCMD=/O:N
set LglDrv=27 * 26 Z 25 Y 24 X 23 W 22 V 21 U 20 T 19 S 18 R 17 Q 16 P 15
set LglDrv=%LglDrv% O 14 N 13 M 12 L 11 K 10 J 9 I 8 H 7 G 6 F 5 E 4 D 3 C
cls
SET RAMD=c
SET CDROM=X


echo.
IF "%config%"=="NETCD" echo Loading Network Configuration Utility v4.00beta
IF "%config%"=="NET" echo Loading Network Configuration Utility v4.00beta
IF "%config%"=="GIGNET" echo Loading Network Configuration Utility v4.00beta
IF "%config%"=="GHOST" echo Loading Network Configuration Utility v4.00beta
set temp=c:\tmp
set tmp=c:\tmp
path=c:\;c:\;%CDROM%:\
set comspec=c:\command.com

IF "%config%"=="NONE" GOTO QUIT

:EXT
c:

IF "%config%"=="CD" goto NONET
IF "%config%"=="NONE" goto NONET
echo Detecting Network Cards...
c:
CD NET
if exist nic.lst del nic.lst
PCISCAN -S -X nic.map >>nic.lst
makeboot.exe /nc:\NET /ac:\

:NONET

IF "%config%"=="NONE" echo Copying System Files into memory...
IF "%config%"=="CD" echo Copying System Files into memory...

echo.
c:
IF "%config%"=="NET" GOTO NET
IF "%config%"=="GIGNET" GOTO NET
IF "%config%"=="GHOST" GOTO NET

LH c:\NET\MSCDEX.EXE /D:mscd001 /L:%CDROM%

IF "%config%"=="NETCD" GOTO NET
echo.
GOTO QUIT

:NET

CLS
c:
CD\NET
path=%path%;c:\;c:;c:\NET
LH c:\net\net initialize
c:\net\netbind.com
c:\net\umb.com
LH c:\net\tcptsr.exe
LH c:\net\tinyrfc.exe
LH c:\net\nmtsr.exe
LH c:\net\emsbfr.exe
LH c:\net\net logon /SAVEPW:NO /Y
IF "%config%"=="GHOST" GOTO STARTGHOST
goto QUIT

:STARTGHOST
echo Starting Symantec Ghost Client...
echo (here comes the staring of ghost)
goto QUIT

:QUIT
set CDROM=
set LglDrv=

