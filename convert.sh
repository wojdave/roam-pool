#!/bin/bash
# script to convert pdf to png or xps to pdf
# convert architectural drawings to map1.png 

if [ $(head -c 4 "$1") = "%PDF" ]; then

convert           \
   -verbose       \
   -density 208   \
   -trim          \
    $1            \
   -quality 100   \
   -flatten       \
   -sharpen 0x1.0 \
    $2
fi

if [ $(head -c 2 "$1") = "PK" ]; then
echo "XPS"
xpstopdf $1
#   --limit-memory 7MiB\

fi


