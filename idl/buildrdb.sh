# use this on linux with ooo build env

# Debian/Ubuntu package
IDLC=/usr/lib/libreoffice/sdk/bin/idlc
REGMERGE=/usr/lib/libreoffice/program/regmerge
IDLPATH=/usr/lib/libreoffice/sdk/idl

# RedHat/CentOS x86_64
# CentOS 7 (1804)
#IDLC=/usr/lib64/libreoffice/sdk/bin/idlc
#REGMERGE=/usr/lib64/libreoffice/program/regmerge
#IDLPATH=/usr/lib64/libreoffice/sdk/idl

# macOS package
#IDLC=/Users/arakawayusuke/LibreOffice6.0_SDK/bin/idlc
#REGMERGE=/Applications/LibreOffice.app/Contents/MacOS/regmerge
#IDLPATH=/Users/arakawayusuke/LibreOffice6.0_SDK/idl

# LibreOffice Official (deb/rpm) package
#IDLC=/opt/libreoffice6.0/sdk/bin/idlc
#REGMERGE=/opt/libreoffice6.0/program/regmerge
#IDLPATH=/opt/libreoffice6.0/sdk/idl

$IDLC -I $IDLPATH XGetRest.idl
$REGMERGE ../rdb/getrest.rdb UCR  XGetRest.urd