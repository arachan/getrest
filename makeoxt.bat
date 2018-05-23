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
GOTO BAT_END

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
GOTO BAT_END

:BAT_END

::rename to oxt
move getrest.zip getrest.oxt
