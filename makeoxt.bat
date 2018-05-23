::zip compression
7z a -tzip getrest.zip reg.uno.py
7z u -tzip getrest.zip META-INF
7z u -tzip getrest.zip pythonpath
7z u -tzip getrest.zip rdb
7z u -tzip getrest.zip description.xml
7z u -tzip getrest.zip LICENSE
7z u -tzip getrest.zip mkoxt.sh
7z u -tzip getrest.zip mkoxt.sh.conf
7z u -tzip getrest.zip README.md

::rename to oxt
move getrest.zip getrest.oxt
