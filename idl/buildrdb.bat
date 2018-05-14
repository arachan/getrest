:: windows 10
:: LibreOffice 6

:: idlc.exe dist
:: C:\Program Files\LibreOffice\sdk\bin

:: -I dist
:: C:\Program Files\LibreOffice\sdk\idl


:: remerge.exe dist
:: C:\Program Files\LibreOffice\program

:: Windows10 x64 LibreOffice x64
:: Windows10 x86 LibreOffice x86

SET IDLC="%ProgramFiles%\LibreOffice\sdk\bin\idlc.exe"
SET REGMERGE="%ProgramFiles%\LibreOffice\program\regmerge.exe"
SET IDL="%ProgramFiles%\LibreOffice\sdk\idl"

IF EXIST %IDLC% (GOTO FILE_TRUE) ELSE GOTO FILE_FALSE

:FILE_TRUE
ECHO "ファイルが見つかりました"
:: Windows10 x64 LibreOffice x64
:: Windows10 x86 LibreOffice x86
GOTO BAT_END

:FILE_FALSE
ECHO "ファイルが見つかりません"
:: Windows10 x64 LibreOffice x86
SET IDLC="%ProgramFiles(x86)%\LibreOffice\sdk\bin\idlc.exe"
SET REGMERGE="%ProgramFiles(x86)%\LibreOffice\program\regmerge.exe"
SET IDL="%ProgramFiles(x86)%\LibreOffice\sdk\idl"
GOTO BAT_END

:BAT_END

:: Make XGetRest.urd
%IDLC% -I %IDL% XGetRest.idl
:: Make getrest.rdb
%REGMERGE% ..\rdb\getrest.rdb UCR XGetRest.urd