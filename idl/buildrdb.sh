# use this on linux with ooo build env

# Debian/Ubuntu Package
IDLPATH=/usr/lib/libreoffice/sdk/idl
# Official rpm/deb package
#IDLPATH=/opt/libreoffice6.0/sdk/idl
# Redhat/CentOS Package
#IDLPATH=/usr/lib64/libreoffice/sdk/idl

idlc -I $IDLPATH XGetRest.idl
regmerge ../rdb/getrest.rdb UCR  XGetRest.urd