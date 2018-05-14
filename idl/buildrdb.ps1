# windows 10
# LibreOffice 6

# idlc.exe dist
# C:\Program Files\LibreOffice\sdk\bin

# -I dist
# C:\Program Files\LibreOffice\sdk\idl

# remerge.exe dist
# C:\Program Files\LibreOffice\program

# Windows10 x64 LibreOffice x64
# Windows10 x86 LibreOffice x86
$IDLC=$env:ProgramFiles+"\LibreOffice\sdk\bin\idlc.exe"
$REMERGE=$env:ProgramFiles+"\LibreOffice\program\regmerge.exe"
$IDL=$env:ProgramFiles+"\LibreOffice\sdk\idl"

IF (Test-Path $IDLC) {}
ELSE{
    # Windows10 x64 LibreOffice x86
    $IDLC=${env:ProgramFiles(x86)}+"\LibreOffice\sdk\bin\idlc.exe"
    $REMERGE=${env:ProgramFiles(x86)}+"\LibreOffice\program\regmerge.exe"
    $IDL=${env:ProgramFiles(x86)}+"\LibreOffice\sdk\idl"
}

# Make XGetRest.urd
Start-Process -FilePath $IDLC -ArgumentList $IDL+" XGetRest.idl" 
# Make getrest.rdb
Start-Process -FilePath $REMERGE -ArgumentList "../rdb/getrest.rdb UCR XGetRest.urd" 