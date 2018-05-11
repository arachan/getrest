# use this on linux with ooo build env
idlc -I $SOLARVER/$INPATH/idl XTokenCounter.idl
regmerge ../rdb/sample.rdb UCR  XTokenCounter.urd

rem use this on windows with ooo build env
rem guw.pl idlc -I $SOLARVER/$INPATH/idl XTokenCounter.idl
rem guw.pl regmerge ../rdb/sample.rdb UCR  XTokenCounter.urd

# windows 10
# LibreOffice 6

# idlc.exe dist
# C:\Program Files\LibreOffice\sdk\bin

# -I dist
# C:\Program Files\LibreOffice\sdk\idl

# remerge.exe dist
# C:\Program Files\LibreOffice\program