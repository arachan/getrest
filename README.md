# getRestAPI

LibreOffice Calc extensions sample 

Get JSON from REST url.

Based on tokencounter python-tokencounter-calc-addin.oxt.

[Python-UNO bridge](http://www.openoffice.org/udk/python/python-bridge.html#examples)

## How to make extension

LibreOffice SDK is needed

In Unix-like environment:

1. edit `mkoxt.sh.conf` to adjust your environment
2. run `./mkout.sh`

In Windows: TODO (pull-req welcome!)


## How to install

1. make `getrest.oxt`
2. Double Click and Install extension to LibreOffice.

## How to use

`=GETREST("http://some-funcy-api")`
