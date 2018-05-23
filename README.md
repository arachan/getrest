# getRest Function

LibreOffice Calc extensions sample 

Get JSON from REST url.

Based on tokencounter python-tokencounter-calc-addin.oxt.

[Python-UNO bridge](http://www.openoffice.org/udk/python/python-bridge.html#examples)

## How to make extension

LibreOffice SDK is needed

In Unix-like environment:

1. edit `mkoxt.sh.conf` to adjust your environment
2. run `./mkout.sh`

In Windows:

1. Install LibreOffice SDK
2. run buildrdb.bat
3. Install [7zip](https://www.7-zip.org/)
4. run makeoxt.bat

Why 7zip use?
Read [My Project](https://github.com/arachan/getrest/projects/1)

## How to install

1. make `getrest.oxt`
2. Double Click and Install extension to LibreOffice.

## How to use

`=GETREST("http://some-funcy-api")`
