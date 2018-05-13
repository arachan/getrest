#!/bin/bash

TMPZIP=/tmp/getrest.oxt
IDLBASENAME=XGetRest
RDBFILE=getrest.rdb

source mkoxt.sh.conf

if [ -v "$IDLC" ]; then
    if type idlc > /dev/null 2>&1; then
       IDLC=idlc
    else
       echo "add \"idlc\" path to PATH or set IDLC to /path/to/idlc" >&2
    fi
fi

if [ -v "$REGMERGE" ]; then
    if type regmerge > /dev/null 2>&1; then
       REGMERGE=regmerge
    else
       echo "add \"regmerge\" path to PATH or set REGMERGE to /path/to/regmerge" >&2
    fi
fi

if [ -v "$IDLPATH" ]; then
    echo "set IDLPATH to LibreOffice SDK IDL path" >&2
fi

$IDLC -I $IDLPATH idl/$IDLBASENAME.idl
$REGMERGE rdb/$RDBFILE UCR idl/$IDLBASENAME.urd

zip $TMPZIP LICENSE
zip $TMPZIP -r META-INF
zip $TMPZIP description.xml
zip $TMPZIP -r idl
zip $TMPZIP -r pythonpath
zip $TMPZIP -r rdb
zip $TMPZIP reg.uno.py

mv $TMPZIP .
