::Make RDB
CHCP 65001
SET IDLC="%ProgramFiles%\LibreOffice\sdk\bin\idlc.exe"
SET REGMERGE="%ProgramFiles%\LibreOffice\program\regmerge.exe"
SET IDL="%ProgramFiles%\LibreOffice\sdk\idl"

IF EXIST %IDLC% (GOTO FILE_TRUE) ELSE GOTO FILE_FALSE

:FILE_TRUE
ECHO "File is Found"
:: Windows10 x64 LibreOffice x64
:: Windows10 x86 LibreOffice x86
GOTO RDBEND

:FILE_FALSE
ECHO "File is not Found"
:: Windows10 x64 LibreOffice x86
SET IDLC="%ProgramFiles(x86)%\LibreOffice\sdk\bin\idlc.exe"
SET REGMERGE="%ProgramFiles(x86)%\LibreOffice\program\regmerge.exe"
SET IDL="%ProgramFiles(x86)%\LibreOffice\sdk\idl"
GOTO RDBEND

:RDBEND

:: Make XGetRest.urd
%IDLC% -I %IDL% idl\XGetRest.idl
:: Make getrest.rdb
%REGMERGE% rdb\getrest.rdb UCR idl\XGetRest.urd

::serch 7zip
:: Scoop 7zip
SET Z=%USERPROFILE%\scoop\shims\7z.exe
IF EXIST %Z% (GOTO SCOOP)
:: Win x64 7zip x64
:: Win x86 7xip x86
SET Z="%ProgramFiles%\7-Zip\7z.exe"
IF EXIST %Z% (GOTO 7Z)
:: Win x64 7zip x86
SET Z="%ProgramFiles(x86)%\7-Zip\7z.exe"
IF EXIST %Z% (GOTO 7Z)

::Compress to zip
:SCOOP
ECHO "scoop installed 7zip."
7z a -tzip getrest.zip reg.uno.py
7z u getrest.zip META-INF
7z u getrest.zip pythonpath
7z u getrest.zip rdb
7z u getrest.zip description.xml
7z u getrest.zip LICENSE
7z u getrest.zip mkoxt.sh
7z u getrest.zip mkoxt.sh.conf
7z u getrest.zip README.md
7z u getrest.zip makeoxt.bat
GOTO ZIP_END

:7Z
ECHO "Insteller installed 7zip"
%Z% a -tzip getrest.zip reg.uno.py
%Z% u getrest.zip META-INF
%Z% u getrest.zip pythonpath
%Z% u getrest.zip rdb
%Z% u getrest.zip description.xml
%Z% u getrest.zip LICENSE
%Z% u getrest.zip mkoxt.sh
%Z% u getrest.zip mkoxt.sh.conf
%Z% u getrest.zip README.md
%Z% u getrest.zip makeoxt.bat
GOTO ZIP_END

:ZIP_END

::rename to oxt
move getrest.zip getrest.oxt
