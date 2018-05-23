::serch 7zip
SET Z=%USERPROFILE%\scoop\shims\7z.exe

::zip compression
IF EXIST %Z% (GOTO SCOOP)

:SCOOP
ECHO "scoop is installed 7zip."
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
GOTO BAT_END

:: Windows10 x64 7zip x64
:: Windows10 x86 7zip x86
SET Z="%ProgramFiles%\7-Zip\7z.exe"
IF EXIST %Z% (GOTO 7Z)

:7Z
ECHO "MSI Instelled 7zip"
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
GOTO BAT_END

:: Windows10 x64 7zip x86
SET Z="%ProgramFiles(x86)%\7-Zip\7z.exe"
IF EXIST %Z% (GOTO 7Z86)
:7Z86
ECHO "MSI Instelled 7zip x86"
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
GOTO BAT_END

:BAT_END

::rename to oxt
move getrest.zip getrest.oxt
