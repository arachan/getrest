# getRestAPI

LibreOffice Calc extensions sample 

getrest 

Counts the number of token separated by whitespace in the target field.

original is under url.
tokencounter python-tokencounter-calc-addin.oxt

[Python-UNO bridge](http://www.openoffice.org/udk/python/python-bridge.html#examples)

## How to make extension

1. This files compress tokencounter.zip .
2. tokencounter.zip rename tokencounter.oxt .

## How to install
1. make tokencounter.oxt
2. Double Click and Install extension to LibreOffice.

## How to use
1. Start LibreOffice Calc.
2. Write 'a b c' to Sheet1 A1.
3. Write '=tokencount(A1)' to Sheet1 B1 .
4. Show '3' to Sheet1 B1
