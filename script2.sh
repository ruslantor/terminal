#!/bin/bash
ARGS=2
E_BADARGS=65
if [ $# -ne "$ARGS" ]
then 
echo "Порядок использования: `basename $0` old_extensio new extension"
exit $E_BADARGS
fi
rm -rf answer/*
for filename in *.$1
do
cp $filename answer/${filename%$1}$2

done
exit 0
